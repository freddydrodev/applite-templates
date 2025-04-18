import 'package:hive_ce/hive.dart';
import '../core/app_model.dart';
import '../core/customer_model.dart';
import '../core/address_model.dart';
import '../core/customer_transaction_model.dart';
import '../core/welcome_model.dart';

/// Register all core model adapters
void registerCoreAdapters() {
  Hive.registerAdapter(AppModelAdapter());
  Hive.registerAdapter(CustomerModelAdapter());
  Hive.registerAdapter(AddressModelAdapter());
  Hive.registerAdapter(CustomerTransactionModelAdapter());
  Hive.registerAdapter(WelcomeModelAdapter());
}
