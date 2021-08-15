import 'package:shop_api_app/models/change_favorites_model.dart';
import 'package:shop_api_app/models/login_model.dart';

abstract class ShopStates {}

class ShopInitialState extends ShopStates {}

class ShopChangeBottomNavState extends ShopStates {}

class ShopLoadingHomeDataState extends ShopStates {}

class ShopSuccesHomeDataState extends ShopStates {}

class ShopErrorHomeDataState extends ShopStates {}

class ShopSuccesCategoriesState extends ShopStates {}

class ShopErrorCategoriesState extends ShopStates {}

class ShopSuccesChangeFavoritesState extends ShopStates {
  final ChangeFavoritesModel changeFavoritesModel;

  ShopSuccesChangeFavoritesState(this.changeFavoritesModel);
}

class ShopChangeFavoritesState extends ShopStates {}

class ShopErrorChangeFavoritesState extends ShopStates {}

class ShopSuccesGetFavoritesState extends ShopStates {}

class ShopErrorGetFavoritesState extends ShopStates {}

class ShopLoadingGetFavoritesState extends ShopStates {}

class ShopSuccesUserDataState extends ShopStates {
  final ShopLoginModel loginModel;

  ShopSuccesUserDataState(this.loginModel);
}

class ShopErrorUserDataState extends ShopStates {}

class ShopLoadingUserDataState extends ShopStates {}

class ShopSuccesUpdateUserDataState extends ShopStates {
  final ShopLoginModel loginModel;

  ShopSuccesUpdateUserDataState(this.loginModel);
}

class ShopErrorUpdateUserDataState extends ShopStates {}

class ShopLoadingUpdateUserDataState extends ShopStates {}

class NewsChangeModeState extends ShopStates {}
