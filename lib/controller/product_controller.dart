
import 'package:get/state_manager.dart';

import 'package:task/model/model_product.dart';
import 'package:task/service/service.dart';
class ProductController extends GetxController{

  var isloading=true.obs;
  var product =List<ProductModel>().obs;
  updateProducts(String last_item) {
    Services.getAllProducts(last_item).then((value) {

        product.value = value;
        isloading (false);
      });



  }
}