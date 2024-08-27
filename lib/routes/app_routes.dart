import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/ondoarding.dart';
import 'package:t_store/features/authentication/screens/password_configuration/foget_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/features/personalization/screens/settings/settings.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/features/shop/screens/product_details/product_detail.dart';
import 'package:t_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_store/features/shop/screens/store/store.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_categories.dart';
import 'package:t_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:t_store/routes/routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: TRoutes.home, page: () => const HomeScreen()),
    GetPage(name: TRoutes.store, page: () => const StoreScreen()),
    GetPage(name: TRoutes.favourites, page: () => const WishlistScreen()),
    GetPage(name: TRoutes.settings, page: () => const SettingsScreen()),
    GetPage(name: TRoutes.subCategories, page: () => const SubCategoriesScreen()),
    GetPage(name: TRoutes.productReview, page: () => const ProductReviewsScreen()),
    GetPage(name: TRoutes.productDetail, page: () => const ProductDetailScreen()),
    GetPage(name: TRoutes.order, page: () => const OrderScreen()),
    GetPage(name: TRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: TRoutes.cart, page: () => const CartScreen()),
    GetPage(name: TRoutes.allProducts, page: () => const AllProductsScreen()),
    GetPage(name: TRoutes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: TRoutes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name: TRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: TRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: TRoutes.signin, page: () => const LoginScreen()),
    GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
    GetPage(name: TRoutes.onBoarding, page: () => const OnBoardingScreen()),
    // GetPage(name: TRoutes.resetPassword, page: () => const ),
    // GetPage(name: TRoutes.search, page: () => const ),
    // GetPage(name: TRoutes.brand, page: () => const BrandProductsScreen()),
  ];
}