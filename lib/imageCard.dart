import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  var data;
  ImageCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder( side: BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(15.0), ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('${data['image']}'),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left :5),
          child: Text("${data['name']}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:5),
          child: Text("${data['amount']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
        ),
      ],
    );
  }
}
