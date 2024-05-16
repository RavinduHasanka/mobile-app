import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/activation_success/activation_success_screen.dart';
import 'package:shop_app/screens/loading/loading_screen.dart';
import 'package:shop_app/screens/products/accessoriesproducts_screen.dart';
import 'package:shop_app/screens/products/androidproducts_screen.dart';
import 'package:shop_app/screens/products/appleproducts_screen.dart';
import 'package:shop_app/screens/products/electronicsproducts_screen.dart';
import 'package:shop_app/screens/products/products_screen.dart';
import 'package:shop_app/screens/products/usedproducts_screen.dart';
import 'package:shop_app/screens/profile/help_screen.dart';
import 'package:shop_app/screens/profile/policies_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/profile/account_information_screen.dart';
import 'screens/profile/policies_screen.dart';
import 'screens/payment/payment_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  LoadingScreen.routeName: (context) => const LoadingScreen(),
  InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(activationToken: '',),
  ActivationSuccessScreen.routeName: (context) => const ActivationSuccessScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  AccountInformationScreen.routeName: (context) => const AccountInformationScreen(),
  HelpScreen.routeName: (context) => const HelpScreen(),
  PoliciesScreen.routeName: (context) => const PoliciesScreen(),
  PaymentScreen.routeName: (context) => const PaymentScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  AccessoriesProductsScreen.routeName: (context) => const AccessoriesProductsScreen(),
  AndroidProductsScreen.routeName: (context) => const AndroidProductsScreen(),
  AppleProductsScreen.routeName: (context) => const AppleProductsScreen(),
  ElectronicsProductsScreen.routeName: (context) => const ElectronicsProductsScreen(),
  UsedProductsScreen.routeName: (context) => const UsedProductsScreen(),

};

