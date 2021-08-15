import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_api_app/cubit/search/search_state.dart';
import 'package:shop_api_app/models/search_model.dart';
import 'package:shop_api_app/shared/dio_helper.dart';
import 'package:shop_api_app/shared/end_points.dart';
import 'package:shop_api_app/widgets/constant.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel model;
  void search(String text) {
    emit(SearchLoadingState());
    DioHelper.postData(
      url: SEARCH,
      data: {
        'text': text,
      },
      token: token,
    ).then((value) {
      model = SearchModel.fromJson(value.data);
      emit(SearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(SearchErrorState());
    });
  }
}
