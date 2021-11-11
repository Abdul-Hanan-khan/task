import 'package:flutter/material.dart';
import 'package:task/controller/product_controller.dart';

import 'package:task/view/home_page.dart';

import 'package:get/get.dart';

class DetailsScreen extends StatefulWidget {
  int index;
  // String productName;

  DetailsScreen({this.index});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final ProductController controller = Get.put(ProductController());
  @override
  void initState() {
    // TODO: implement initState
    allProducts = controller.product[widget.index];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text(allProducts.itemName),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const SizedBox(height: 25,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Your Product details are',style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),),
          ),
          Text("Product id: "+allProducts.id,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Name: "+allProducts.itemName,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Description: "+allProducts.itemDescription,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Category Name: "+allProducts.categoryName,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Category Id: "+allProducts.categoryId,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Type: "+allProducts.type,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Used For: "+allProducts.itemUsedFor,style: TextStyle(color: Colors.grey[800]),),
          Text("Product Item Summary: "+allProducts.itemSummary,style: TextStyle(color: Colors.grey[800]),),
        ],
      ),
    ));
  }
}
