import 'package:auto_route/auto_route.dart';
import 'package:trustpay/features/coming_soon/comingscreen.dart';
import 'package:trustpay/features/dashboard/dashboard.dart';
import 'package:trustpay/features/home/view/home_screen.dart';
import 'package:trustpay/features/login/view/login_screen.dart';
import 'package:trustpay/features/notification/view/notification_screen.dart';
import 'package:trustpay/features/request_service/view/request_service_screen.dart';
import 'package:trustpay/features/sample/view/sample_screen.dart';
import 'package:trustpay/features/start_page/start_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: StartRoute.page),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/dashboard', page: DashboardRoute.page),
        AutoRoute(path: '/comimg', page: ComingSoonRoute.page),
        AutoRoute(path: '/requestService', page: RequestServiceRoute.page),
        AutoRoute(path: '/notification', page: NotificationRoute.page),














           AutoRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'coming', page: ComingSoonRoute.page),
            AutoRoute(path: 'coming', page: ComingSoonRoute.page),
            AutoRoute(path: 'coming', page: ComingSoonRoute.page),

          ],
        ),
        /*
        AutoRoute(path: '/onboard', page: OnboardingRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/emailorphone', page: EmailOrPhoneRoute.page),
        AutoRoute(path: '/otp', page: OTPRoute.page),
        AutoRoute(path: '/companyName', page: CompanyNameRoute.page),
        AutoRoute(path: '/enterPin', page: EnterPinRoute.page),
        AutoRoute(path: '/pinSuccess', page: SuccessRoute.page),
        AutoRoute(path: '/pinSuccess', page: SignInRoute.page),
        AutoRoute(path: '/pinRecovery', page: PinRecoveryRoute.page),
        AutoRoute(path: '/recoveryOtp', page: RecoveryOTPRoute.page),
        AutoRoute(path: '/enterNewPin', page: EnterNewPinRoute.page),
        AutoRoute(path: '/moneyIn', page: MoneyInRoute.page),
        AutoRoute(path: '/addBusSuccScreen', page: AddBusSuccRoute.page),
        AutoRoute(path: '/debtScreen', page: DebtRoute.page),
        AutoRoute(path: '/debt_details_Screen', page: DebtDetailRoute.page),
        AutoRoute(path: '/debt_success_screen', page: DebtSuccRoute.page),
        AutoRoute(
            path: '/debt_payment_history', page: PaymentHistoryRoute.page),
        AutoRoute(path: '/debt_receipt', page: DebtReceiptRoute.page),
        AutoRoute(path: '/securityScreen', page: SecurityRoute.page),
        AutoRoute(
            path: '/accountDetailsScreen', page: AccountDetailsRoute.page),
        AutoRoute(path: '/changePinScreen', page: ChangePinRoute.page),
        AutoRoute(
            path: '/changePhoneNumScreen', page: ChangePhoneNumRoute.page),
        AutoRoute(
            path: '/changePhoneOtpScreen', page: ChangePhoneOtpRoute.page),
        AutoRoute(
            path: '/phoneChangeSuccessScreen',
            page: PhoneChangeSuccessRoute.page),
        AutoRoute(
            path: '/companyDetailsScreen', page: CompanyDetailsRoute.page),
        AutoRoute(
            path: '/companySuccessScreen', page: CompanySuccessRoute.page),
        AutoRoute(path: '/inviteFriendScreen', page: InviteFriendRoute.page),
        AutoRoute(path: '/faq_screen', page: FAQRoute.page),
        AutoRoute(path: '/customer_screen', page: CustomerRoute.page),
        AutoRoute(path: '/supplier_screen', page: SupplierRoute.page),
        AutoRoute(path: '/add_customer_screen', page: AddCustomerRoute.page),
        AutoRoute(path: '/edit_customer_screen', page: EditCustomerRoute.page),
        AutoRoute(path: '/add_supplier_screen', page: AddSupplierRoute.page),
        AutoRoute(path: '/edit_supplier_screen', page: EditSupplierRoute.page),
        AutoRoute(path: '/datePickerScreen', page: DatePickerRoute.page),

        AutoRoute(path: '/all_entries_screen', page: AllEntriesRoute.page),
        AutoRoute(
            path: '/customer_report_screen', page: CustomerReportRoute.page),
        AutoRoute(path: '/daily_report_screen', page: DailyReportRoute.page),
        AutoRoute(
            path: '/expenses_report_screen', page: ExpenseReportRoute.page),
        AutoRoute(path: '/income_report_screen', page: IncomeReportRoute.page),
        AutoRoute(
            path: '/payment_report_screen', page: PaymentReportRoute.page),
        AutoRoute(
            path: '/supplier_report_screen', page: SupplierReportRoute.page),
        //print report to remove start
        AutoRoute(path: '/all_entries_print_screen', page: AllPrintRoute.page),
        AutoRoute(
            path: '/customer_print_screen', page: CustomerPrintRoute.page),
        AutoRoute(path: '/daily_print_screen', page: DailyPrintRoute.page),
        AutoRoute(
            path: '/expenses_print_screen', page: ExpensesPrintRoute.page),
        AutoRoute(path: '/income_print_screen', page: IncomePrintRoute.page),
        AutoRoute(path: '/payment_print_screen', page: PaymentPrintRoute.page),
        AutoRoute(path: '/add_inventory_screen', page: AddInventoryRoute.page),
        AutoRoute(
            path: '/edit_inventory_screen', page: EditInventoryRoute.page),
        AutoRoute(
            path: '/supplier_print_screen', page: SupplierPrintRoute.page),
        AutoRoute(
            path: '/record_success_screen', page: RecordSuccessRoute.page),
        AutoRoute(
            path: '/record_success_out_screen',
            page: RecordSuccessOutRoute.page),
        AutoRoute(
            path: '/money_in_receipt_screen', page: MoneyInReceiptRoute.page),
        AutoRoute(
            path: '/money_out_receipt_screen', page: MoneyOutReceiptRoute.page),
        AutoRoute(path: '/moneyOut', page: MoneyOutRoute.page),
        AutoRoute(path: '/changeEmail', page: ChangeEmailRoute.page),
        AutoRoute(path: '/change_number_otp', page: ChangeNumberOTPRoute.page),
        AutoRoute(path: '/change_email_otp', page: ChangeEmailOTPRoute.page),
        AutoRoute(path: '/faqDetails', page: FaqDetailRoute.page),
        AutoRoute(
            path: '/update_company_success', page: UpdateSuccessRoute.page),
        AutoRoute(path: '/print_screen', page: PrintRoute.page),
        AutoRoute(path: '/dashboard_receipt', page: ReceiptRoute.page),
        AutoRoute(path: '/fund_wallet', page: FundWalletRoute.page),
        AutoRoute(path: '/fund_with', page: FundWithRoute.page),
        AutoRoute(path: '/card_fund', page: CardFundRoute.page),
        AutoRoute(path: '/card_fund_success', page: FundWalletSuccRoute.page),
        AutoRoute(path: '/buy_Airtime', page: DataAirtimeRoute.page),
        AutoRoute(path: '/enter_airtime_details', page: EnterAirtimeDetailsRoute.page),
        AutoRoute(path: '/enter_data_details', page: EnterDataDetailsRoute.page),
        AutoRoute(path: '/airtime_review', page: AirtimeReviewRoute.page),
        AutoRoute(path: '/data_review', page: DataReviewRoute.page),
        AutoRoute(path: '/data_otp', page: DataOTPRoute.page),
        AutoRoute(path: '/airtime_otp', page: AirtimeOTPRoute.page),
        AutoRoute(path: '/airtime_success', page: AirtimeSuccessRoute.page),
        AutoRoute(path: '/data_success', page: DataSuccessRoute.page),
        AutoRoute(path: '/pay_bills', page: PayBillsRoute.page),

        //end
        /*  AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/onboarding', page: MainBoardRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page), */

        /// routes go here
        AutoRoute(
          path: '/home',
          page: DashboardRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'inventory', page: InventoryRoute.page),
            AutoRoute(path: 'report', page: ReportRoute.page),
            AutoRoute(path: 'Wallet', page: WalletRoute.page),
            AutoRoute(path: 'settings', page: SettingRoute.page),
          ],
        ),
        */
      ];
}

/* late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        name: 'splash',
        path: kSplah,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashPage(),
       /*  routes: <GoRoute>[
          GoRoute(
            name: 'family',
            path: 'family/:fid',
            builder: (BuildContext context, GoRouterState state) =>
                FamilyScreen(fid: state.params['fid']!),
            routes: <GoRoute>[
              GoRoute(
                name: 'person',
                path: 'person/:pid',
                builder: (BuildContext context, GoRouterState state) {
                  return PersonScreen(
                      fid: state.params['fid']!, pid: state.params['pid']!);
                },
              ),
            ],
          ),
        ], */
      ),
       GoRoute(
        name: 'onboarding_one',
        path: kOnboardingOne,
        builder: (BuildContext context, GoRouterState state) =>
            const OnboardingOnePage(),
      
      ),
        GoRoute(
        name: '/home',
        path: kHome,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      
      ),
    ],
  );
 */
