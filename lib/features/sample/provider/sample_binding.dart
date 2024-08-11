import 'package:get/get.dart';
import 'package:trustpay/features/login/provider/login_controller.dart';
import 'package:trustpay/features/sample/provider/sample_controller.dart';

class SampleBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SampleController>(() => SampleController());
  }
}
