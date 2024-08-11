import 'package:get_it/get_it.dart';
import 'package:trustpay/core/router/router.dart';


final getIt = GetIt.instance;
var appRoute = GetIt.instance<AppRouter>();

inilizeLocator (){
    getIt.registerSingleton<AppRouter>(AppRouter());
}