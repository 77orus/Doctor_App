import 'package:bloc/bloc.dart';
import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/features/home/data/models/home_response_model.dart';
import 'package:doctoapp/features/home/data/repository/home_repo.dart';
import 'package:doctoapp/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  List<CategoriesData> categoriesList = [];

  Future<void> getHomeData() async {
    emit(const HomeState.loading());
    final result = await homeRepo.getHomeData();
    result.whenOrNull(
      success: (categoriesData) {
        categoriesList = categoriesData.categoriesData;
        getDoctorsByCategoryId(categoriesList.first.id);
        emit(
          HomeState.success(categoriesList),
        );
      },
      failure: (error) {
        emit(
          HomeState.failure(
            error.apiErrorModel.message ??
                'An error occurred while fetching Home data',
          ),
        );
      },
    );
  }

  void getDoctorsList({required int categoryId}) {
    List<Doctors> doctorsList = getDoctorsByCategoryId(categoryId);
    if (!doctorsList.isEmptyOrNull()) {
      emit(HomeState.doctorSuccess(doctorsList));
    } else {
      emit(
        const HomeState.doctorFailure("Error occurred while fetching doctors"),
      );
    }
  }

  getDoctorsByCategoryId(categoryId) {
    return categoriesList
        .firstWhere((category) => category.id == categoryId)
        .doctorsData;
  }
}
