import 'package:flutter/material.dart';
import 'package:task/controller/product_controller.dart';

import 'package:task/model/model_product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:task/view/details_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {

   HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}




ProductModel allProducts = ProductModel();
bool isloading = true;
class _HomeScreenState extends State<HomeScreen> {
  final ProductController controller = Get.put(ProductController());



  @override
  void initState() {
    // TODO: implement initState
    controller.updateProducts('${controller.pageNumber.value}');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Obx((){
           return Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Now of items ${controller.product.length}'),
               Text('Page # ${controller.pageNumber}'),
             ],
           );
          }),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx((){
              if(controller.isloading == true){
                return const Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: CircularProgressIndicator(),
                );
              }
              else{
                return Container(
                  color: Colors.grey,
                  height: size.height * 0.8,
                  child: ListView.builder(
                    itemCount: controller.product.length,
                    itemBuilder: (context, index) {
                      allProducts = controller.product[index];
                      return GestureDetector(
                        child: Card(
                          child: ListTile(
                            title: Text(allProducts.itemName ?? ""),
                            subtitle: Text(allProducts.categoryName ?? ""),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(index: index,)));
                        },
                      );
                    },
                  ),
                );
              }
            }),


                // : Center(child: Padding(
                //   padding: const EdgeInsets.only(top: 200),
                //   child: CircularProgressIndicator(),
                // )),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                RaisedButton(
                  child: const Text("Prev page"),
                  onPressed: () {

                   if(controller.pageNumber.value == 1){

                   }else
                     {
                       controller.isloading.value=true;
                       controller.pageNumber.value --;
                       controller.updateProducts('${controller.pageNumber.value}');
                     }


                  },
                )
                ,RaisedButton(
                  child: Text("Load More"),
                  onPressed: () {
                   controller.isloading.value=true;
                   controller.pageNumber.value ++;
                   controller.updateProducts('${controller.pageNumber.value}');

                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
