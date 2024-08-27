  import 'package:t_store/features/shop/models/banner_model.dart';
  import 'package:t_store/utils/constants/image_strings.dart';

  import '../routes/routes.dart';

  class TDummyData {
    static final List<BannerModel> banners = [
      BannerModel(imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
      BannerModel(imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
      BannerModel(imageUrl: TImages.banner3, targetScreen: TRoutes.favourites, active: false),
      BannerModel(imageUrl: TImages.banner4, targetScreen: TRoutes.settings, active: true),
      BannerModel(imageUrl: TImages.banner5, targetScreen: TRoutes.userAddress, active: true),
      BannerModel(imageUrl: TImages.banner6, targetScreen: TRoutes.search, active: true),
      BannerModel(imageUrl: TImages.banner7, targetScreen: TRoutes.checkout, active: true),
      BannerModel(imageUrl: TImages.banner8, targetScreen: TRoutes.order, active: false),
    ];
  }
