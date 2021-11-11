
import 'package:task/model/model_product.dart';
import 'package:http/http.dart' as http;

class Services{

  static Future<List<ProductModel>> getAllProducts(String last_item) async {
    final String apiUrl = "https://lushbybeenish.pk/whatsinit/whatsinit.php";

    final response = await http.post(apiUrl, body: {
      "get_items": '1',
      "category_id": '0',
      "last_item": last_item,
    });

    if (response.statusCode == 200) {
      final String responseString = response.body;
      // var jsonString=json.decode(response.body);
      print("printing response $responseString");

      return productModelFromJson(responseString);
    } else {
      print("/////////////////////////////////////////////error");
      return null;
    }
  }

}