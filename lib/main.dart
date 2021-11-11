

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'view/home_page.dart';
import 'model/model_product.dart';
import 'model/model_product.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}



Future<List<ProductModel>>  getAllProducts(String get_items, String category_id, String last_item) async{
  final String apiUrl = "https://lushbybeenish.pk/whatsinit/whatsinit.php";

  final response = await http.post(apiUrl, body: {
    "get_items": get_items,
    "category_id": category_id,
    "last_item": last_item,
  });

  if(response.statusCode == 200){
    final String responseString = response.body;
    print("printing response $responseString");

    return productModelFromJson(responseString);
  }else{
    print("/////////////////////////////////////////////error");
    return null;
  }
}
