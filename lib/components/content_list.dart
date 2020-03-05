import 'package:flutter/material.dart';
import './product_list.dart';
import './content_list_img.dart';
import 'dart:ui';
import 'dart:math' as math;

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class ContentList extends StatefulWidget {
  ContentList({Key key}) : super(key: key);

  @override
  _ContentListState createState() => _ContentListState();
}

class _ContentListState extends State<ContentList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: CustomScrollView(
          slivers: <Widget>[
            ContentListImg(),
            SliverGrid.count(
              crossAxisCount: 4,
              children: productsForGrid.map((item) {
                return _buildItemGrid(item);
              }).toList(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _buildItem(context, productsForList[index]);
                },
                childCount: productsForList.length,
              ),
            )
          ],
        ));
  }

  Widget _buildItemGrid(ContentItem item) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                child: SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: Image.asset(
                    item.asset,
                    fit: BoxFit.cover,
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    item.name,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, ContentItem item) {
    return Card(
//      height: 120.0,
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                  child: Container(
                      height: 120.0,
                      color: Colors.white,
                      child: ClipRRect(
                        child: Image.asset(
                          item.asset,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ))),
            ],
          ),
          Container(
              alignment: Alignment.centerLeft,
              height: 40.0,
              color: Colors.white,
              padding: EdgeInsets.only(left: 10.0),
              child: Text(item.name,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500)))
        ],
      ),
    );
  }
}
