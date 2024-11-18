import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_navigation_cubit.freezed.dart';
part 'bottom_navigation_state.dart';

@injectable
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationState.initial());

  void changedTab({required int tabId}) {
    emit(state.copyWith(tabPosition: tabId));
  }
}
