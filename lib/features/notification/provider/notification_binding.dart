import 'package:get/get.dart';
import 'package:trustpay/features/login/provider/login_controller.dart';
import 'package:trustpay/features/notification/provider/notification_controller.dart';

class NotificationBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<NotificationController>(() => NotificationController());
  }
}
