import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/entities/category_items_entity.dart';
import '../../domain/entities/product_categories_entity.dart';
import '../../domain/repositories/i_product_repository.dart';

part 'product_watcher_bloc.freezed.dart';
part 'product_watcher_event.dart';
part 'product_watcher_state.dart';

@injectable
class ProductWatcherBloc
    extends Bloc<ProductWatcherEvent, ProductWatcherState> {
  final IProductRepository _productRepository;
  final IAuthenticationRepository _authenticationRepository;
  ProductWatcherBloc(
    this._productRepository,
    this._authenticationRepository,
  ) : super(ProductWatcherState.initial()) {
    on<ProductWatcherEvent>(
      (event, emit) async {
        await event.map(
          fetchProductCategories: (e) async {
            // debugPrint('This method was called!.....');
            final authToken = await _authenticationRepository.getToken();

            Either<Failure, List<Map<String, dynamic>>>? cartDetails;

            List<Map<String, dynamic>> cartData = [];
            List<CategoryItemsEntity> selectedCart = [];

            Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess;

            emit(state.copyWith(isLoading: true, failureOrSuccess: null));

            cartDetails =
                await _productRepository.fetchProductCart(authToken: authToken);

            cartDetails.fold(
              (l) => null,
              (r) => cartData = r,
            );

            failureOrSuccess = await _productRepository.fetchProductCategories(
                authToken: authToken, url: e.url);

            failureOrSuccess.fold((l) {}, (r) {
              for (var e in r) {
                for (var f in e.products) {
                  for (var g in cartData) {
                    if (f.id == g['product_id']) {
                      selectedCart.add(f);
                    }
                  }
                }
              }
            });

            // debugPrint('from Bloc: $selectedCart');

            emit(state.copyWith(
              failureOrSuccess: failureOrSuccess,
              isLoading: false,
              selectedItems: selectedCart,
              itemQuantity: cartData,
              cartCount: selectedCart.length,
            ));
          },
          changePage: (e) {
            emit(state.copyWith(selectedPage: e.page));
          },
          addItems: (e) async {
            final authToken = await _authenticationRepository.getToken();

            if (!state.selectedItems
                .map((e) => e.id)
                .toList()
                .contains(e.selectedItem.id)) {
              List<CategoryItemsEntity> tempItems =
                  List.from(state.selectedItems);
              List<Map<String, dynamic>> tempCounts =
                  List.from(state.itemQuantity);
              tempItems.add(e.selectedItem);
              tempCounts.add(
                {
                  'product_id': e.selectedItem.id,
                  'count': 1,
                },
              );

              await _productRepository.storeCartProduct(
                  authToken: authToken, cartData: tempCounts);

              emit(
                state.copyWith(
                  selectedItems: tempItems,
                  itemQuantity: tempCounts,
                  cartCount: tempCounts.length,
                ),
              );
            }
          },
          computeAmount: (_) async {
            final authToken = await _authenticationRepository.getToken();

            double subTotal = state.subTotal;
            double tax = state.tax;
            double totalAmount = state.total;

            // Either<Failure, String> address =
            //     await _productRepository.fetchAddress(authToken: authToken);

            Either<Failure, Map<String, dynamic>> calculation =
                await _productRepository.fetchCalculation(
                    authToken: authToken, data: state.itemQuantity);

            calculation.fold((l) {}, (r) {
              // debugPrint('$r');
              subTotal = r['sub_total'] as double;
              tax = r['tax'] as double;
              totalAmount = r['total_amount'] as double;
            });

            // debugPrint('from bloc cart count: ${e.cartCount}');

            emit(state.copyWith(
              // itemQuantity: e.itemQuantity,
              // selectedItems: e.selectedItem,
              // address: address,
              subTotal: subTotal,
              tax: tax,
              total: totalAmount,
              // cartCount: e.cartCount,
            ));
          },
          /* event to decrement item's count  */
          decrement: (e) async {
            final authToken = await _authenticationRepository.getToken();

            double subTotal = state.subTotal;
            double tax = state.tax;
            double totalAmount = state.total;

            List<Map<String, dynamic>> tempCount =
                List.from(state.itemQuantity);
            List<CategoryItemsEntity> tempItems =
                List.from(state.selectedItems);

            final value = tempCount
                .where((element) => element['product_id'] == e.productId)
                .first;
            final indexNumber = tempCount.indexOf(value);

            if (value['count'] <= 1) {
              tempItems.removeAt(indexNumber);
              tempCount.removeAt(indexNumber);
              await _productRepository.storeCartProduct(
                  cartData: tempCount, authToken: authToken);
              emit(state.copyWith(
                  itemQuantity: tempCount,
                  selectedItems: tempItems,
                  cartCount: tempItems.length));

              Either<Failure, Map<String, dynamic>> calculation =
                  await _productRepository.fetchCalculation(
                      authToken: authToken, data: state.itemQuantity);

              calculation.fold((l) {}, (r) {
                // debugPrint('$r');
                subTotal = r['sub_total'] as double;
                tax = r['tax'] as double;
                totalAmount = r['total_amount'] as double;
              });

              emit(state.copyWith(
                subTotal: subTotal,
                tax: tax,
                total: totalAmount,

                // failureOrSuccess: state.failureOrSuccess,
              ));
            } else {
              tempCount[indexNumber] = {
                'product_id': e.productId,
                'count': value['count'] - 1,
              };

              await _productRepository.storeCartProduct(
                  cartData: tempCount, authToken: authToken);

              emit(state.copyWith(
                itemQuantity: tempCount,
                cartCount: tempItems.length,
              ));

              Either<Failure, Map<String, dynamic>> calculation =
                  await _productRepository.fetchCalculation(
                      authToken: authToken, data: state.itemQuantity);

              calculation.fold((l) {}, (r) {
                // debugPrint('$r');
                subTotal = r['sub_total'] as double;
                tax = r['tax'] as double;
                totalAmount = r['total_amount'] as double;
              });

              emit(state.copyWith(
                subTotal: subTotal,
                tax: tax,
                total: totalAmount,

                // failureOrSuccess: state.failureOrSuccess,
              ));
            }
          },
          /* event to increment item's count  */
          increment: (e) async {
            final authToken = await _authenticationRepository.getToken();

            double subTotal = state.subTotal;
            double tax = state.tax;
            double totalAmount = state.total;
            List<Map<String, dynamic>> tempCount =
                List.from(state.itemQuantity);

            final value = tempCount
                .where((element) => element['product_id'] == e.productId)
                .first;

            final indexNumber = tempCount.indexOf(value);

            tempCount[indexNumber] = {
              'product_id': e.productId,
              'count': value['count'] + 1,
            };

            await _productRepository.storeCartProduct(
                authToken: authToken, cartData: tempCount);

            emit(state.copyWith(itemQuantity: tempCount));

            Either<Failure, Map<String, dynamic>> calculation =
                await _productRepository.fetchCalculation(
                    authToken: authToken, data: state.itemQuantity);

            calculation.fold((l) {}, (r) {
              // debugPrint('$r');
              subTotal = r['sub_total'] as double;
              tax = r['tax'] as double;
              totalAmount = r['total_amount'] as double;
            });

            emit(state.copyWith(
              subTotal: subTotal,
              tax: tax,
              total: totalAmount,
            ));
          },
          /* event for searching value */
          searchKey: (e) {
            emit(state.copyWith(searchKey: e.searchKey));
          },
          removeItem: (e) async {
            final authToken = await _authenticationRepository.getToken();

            double subTotal = state.subTotal;
            double tax = state.tax;
            double totalAmount = state.total;

            List<Map<String, dynamic>> tempCount =
                List.from(state.itemQuantity);
            List<CategoryItemsEntity> tempItems =
                List.from(state.selectedItems);

            final value = tempCount
                .where((element) => element['product_id'] == e.productId)
                .first;
            final indexNumber = tempCount.indexOf(value);

            tempItems.removeAt(indexNumber);
            tempCount.removeAt(indexNumber);

            await _productRepository.storeCartProduct(
                authToken: authToken, cartData: tempCount);

            emit(state.copyWith(
              itemQuantity: tempCount,
              selectedItems: tempItems,
              cartCount: tempItems.length,
            ));

            Either<Failure, Map<String, dynamic>> calculation =
                await _productRepository.fetchCalculation(
                    authToken: authToken, data: state.itemQuantity);

            calculation.fold((l) {}, (r) {
              subTotal = r['sub_total'] as double;
              tax = r['tax'] as double;
              totalAmount = r['total_amount'] as double;
            });

            emit(state.copyWith(
              subTotal: subTotal,
              tax: tax,
              total: totalAmount,

              // failureOrSuccess: state.failureOrSuccess,
            ));
          },
          resetData: (_) {
            //    selectedItems: [],
            // itemQuantity: [],
            // selectedPage: 0,
            // subTotal: 0,
            // tax: 0,
            // total: 0,
            // cartCount: 0,
            emit(state.copyWith(
              selectedItems: [],
              itemQuantity: [],
              subTotal: 0,
              tax: 0,
              total: 0,
              cartCount: 0,
            ));
          },
        );
      },
    );
  }
}
