import 'package:hive_ce/hive.dart';
import '../store/store_seller_model.dart';
import '../store/store_category_model.dart';
import '../store/store_badge_model.dart';
import '../store/store_option_value_model.dart';
import '../store/store_option_model.dart';
import '../store/store_option_in_variant_model.dart';
import '../store/stock_product_image_model.dart';
import '../store/store_product_model.dart';
import '../store/store_product_variant_model.dart';
import '../store/store_product_review_model.dart';

/// Register all store model adapters
void registerStoreAdapters() {
  Hive.registerAdapter(StoreSellerModelAdapter());
  Hive.registerAdapter(StoreCategoryModelAdapter());
  Hive.registerAdapter(StoreBadgeModelAdapter());
  Hive.registerAdapter(StoreOptionValueModelAdapter());
  Hive.registerAdapter(StoreOptionModelAdapter());
  Hive.registerAdapter(StoreOptionInVariantModelAdapter());
  Hive.registerAdapter(StockProductImageModelAdapter());
  Hive.registerAdapter(StoreProductModelAdapter());
  Hive.registerAdapter(StoreProductVariantModelAdapter());
  Hive.registerAdapter(StoreProductReviewModelAdapter());
}
