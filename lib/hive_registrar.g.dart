// Generated by Hive CE
// Do not modify
// Check in to version control

import 'package:hive_ce/hive.dart';
import 'package:applite_templates/packages/models/core/address_model.dart';
import 'package:applite_templates/packages/models/core/app_model.dart';
import 'package:applite_templates/packages/models/core/customer_model.dart';
import 'package:applite_templates/packages/models/core/customer_transaction_model.dart';
import 'package:applite_templates/packages/models/core/welcome_model.dart';
import 'package:applite_templates/packages/models/store/stock_product_image_model.dart';
import 'package:applite_templates/packages/models/store/store_badge_model.dart';
import 'package:applite_templates/packages/models/store/store_category_model.dart';
import 'package:applite_templates/packages/models/store/store_option_in_variant_model.dart';
import 'package:applite_templates/packages/models/store/store_option_model.dart';
import 'package:applite_templates/packages/models/store/store_option_value_model.dart';
import 'package:applite_templates/packages/models/store/store_product_model.dart';
import 'package:applite_templates/packages/models/store/store_product_review_model.dart';
import 'package:applite_templates/packages/models/store/store_product_variant_model.dart';
import 'package:applite_templates/packages/models/store/store_seller_model.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(AddressModelAdapter());
    registerAdapter(AppModelAdapter());
    registerAdapter(CustomerModelAdapter());
    registerAdapter(CustomerTransactionModelAdapter());
    registerAdapter(StockProductImageModelAdapter());
    registerAdapter(StoreBadgeModelAdapter());
    registerAdapter(StoreCategoryModelAdapter());
    registerAdapter(StoreOptionInVariantModelAdapter());
    registerAdapter(StoreOptionModelAdapter());
    registerAdapter(StoreOptionValueModelAdapter());
    registerAdapter(StoreProductModelAdapter());
    registerAdapter(StoreProductReviewModelAdapter());
    registerAdapter(StoreProductVariantModelAdapter());
    registerAdapter(StoreSellerModelAdapter());
    registerAdapter(WelcomeModelAdapter());
  }
}
