import 'package:bloc/bloc.dart';
import 'package:doctoapp/features/home/data/repository/home_repo.dart';
import 'package:doctoapp/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  Future<void> getHomeData() async {
    emit(const HomeState.loading());
    final result = await homeRepo.getHomeData();
    result.whenOrNull(success: (data) {
      emit(
        HomeState.success(data),
      );
    }, failure: (error) {
      emit(HomeState.failure(error.apiErrorModel.message ??
          'An error occurred while fetching Home data'));
    });
  }
}
