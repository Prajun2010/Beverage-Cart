import 'package:beverage_app/core/infrastructure/endpoints.dart';
import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/authentication/domain/repositories/i_authentication_repository.dart';
import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:beverage_app/features/product/domain/repositories/i_product_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'featured_product_event.dart';
part 'featured_product_state.dart';
part 'featured_product_bloc.freezed.dart';

@injectable
class FeaturedProductBloc
    extends Bloc<FeaturedProductEvent, FeaturedProductState> {
  final IAuthenticationRepository _authenticationRepository;
  final IProductRepository _productRepository;

  FeaturedProductBloc(
    this._authenticationRepository,
    this._productRepository,
  ) : super(FeaturedProductState.initial()) {
    on<FeaturedProductEvent>((event, emit) async {
      await event.map(
        fetchFeaturedProducts: (_) async {
          // debugPrint('calling this method ');
          final authToken = await _authenticationRepository.getToken();

          Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess;
          emit(state.copyWith(failureOrSuccess: null, isLoading: true));

          failureOrSuccess = await _productRepository.fetchFeaturedProducts(
            authToken: authToken,
            url: AppEndPoints.featuredProducts,
          );

          emit(state.copyWith(
              failureOrSuccess: failureOrSuccess, isLoading: false));
        },
      );
    });
  }
}
