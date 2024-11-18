import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../features/authentication/domain/repositories/i_authentication_repository.dart';
import '../../../features/product/domain/entities/category_items_entity.dart';
import '../../domain/repositories/i_core_repository.dart';
import '../../infrastructure/endpoints.dart';
import '../../infrastructure/error/failure.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IAuthenticationRepository _authenticationRepository;
  final ICoreRepository _coreRepository;
  SearchBloc(this._authenticationRepository, this._coreRepository)
      : super(SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        searchProducts: (e) async {
          final authToken = await _authenticationRepository.getToken();
          emit(state.copyWith(isLoading: true, failureOrSuccess: null));

          Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess;

          failureOrSuccess = await _coreRepository.searchProducts(
            authToken: authToken,
            url: AppEndPoints.productSearch,
            searchKey: e.searchKey,
          );

          emit(state.copyWith(
            isLoading: false,
            failureOrSuccess: failureOrSuccess,
          ));
        },
      );
    });
  }
}
