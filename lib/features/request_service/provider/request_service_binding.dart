import 'package:get/get.dart';
import 'package:trustpay/features/login/provider/login_controller.dart';
import 'package:trustpay/features/request_service/provider/request_service_controller.dart';

class RequestServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestServiceController>(() => RequestServiceController());
  }
}
