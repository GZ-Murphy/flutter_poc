import 'package:flutter/material.dart';
import './product_list.dart';


class ContentListImg extends StatefulWidget {
  ContentListImg({Key key}) : super(key: key);

  @override
  _ContentListImgState createState() => _ContentListImgState();
}

class _ContentListImgState extends State<ContentListImg> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
                  child: Container(
                      height: 200.0,
                      color: Colors.white,
                      child:Image.asset(
                          productsForHeaderImg.asset,
                          fit: BoxFit.cover,
                        )
                ),
    );
  }

}
