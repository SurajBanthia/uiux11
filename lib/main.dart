import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uiux11/imageCard.dart';

void main() {
  runApp(uiux11());
}

class uiux11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: desgine(),
    );
  }
}

class desgine extends StatelessWidget {

  List Data = [
    {
      "image" : "assets/images/hoodie.jpg",
      "name": "Cotton SweatShirt",
      "amount":"1000",
    },
    {
      "image" : "assets/images/hoodie5.jpg",
      "name": "Short Jacket",
      "amount":"1500",
    },
    {
      "image" : "assets/images/hoodie3.jpg",
      "name": "Mens Hoodie",
      "amount":"2100",
    },
    {
      "image" : "assets/images/hoodie4.jpg",
      "name": "Long Hoodie",
      "amount":"1800",
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,bottom: 30,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.circle,size: 40,),
                  Row(
                    children: [
                      Image.asset("assets/icons/filter.png",height: 40,width: 40,),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon:Icon(Icons.shopping_cart,size: 30),
                        onPressed: (){
                          opencartBottomSheet(context);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15,top: 20,),
              child: Text("The most popular \n clothes today",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black,),),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.grey,
                      ),
                    ),
                    Text("Search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              padding:
              EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: StaggeredGridView.countBuilder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      itemCount: Data.length,
                      itemBuilder: (BuildContext context, int index) {
                          return ImageCard(Data[index]);
                      },
                      staggeredTileBuilder: (_) => StaggeredTile.fit(2),
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),


      ),

    );
  }

  opencartBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text("Avenger Winter Hoddie"),
            subtitle: Text("1 x 400"),
            trailing: IconButton(icon:Icon(Icons.close),onPressed: (){

            },),

          )
        ],
      );
    });
  }
}