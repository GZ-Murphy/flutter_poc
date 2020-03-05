import 'package:flutter/material.dart';
import './product_list.dart';
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

class DetailList extends StatefulWidget {
  DetailList({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DetailListState createState() => _DetailListState();
}

class _DetailListState extends State<DetailList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: _buildSearchBox(context),
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

  Widget _buildSearchBox(
    BuildContext context,
  ) {
    return Card(
        child: Column(children: <Widget>[
      // SizedBox(height: 24),
      Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '输入搜索内容 ',
              labelText: '搜索 ${widget.title}：'),
        ),
      ),
    ]));
  }

  Widget _buildItem(BuildContext context, ContentItem item) {
    return Card(
//      height: 120.0,
      margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: Column(
//        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                  flex: 1,
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
              Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.topLeft,
                      height: 120.0,
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 10.0, top: 10),
                      child: Flex(direction: Axis.vertical, children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Text(item.name,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500))),
                        Expanded(
                            flex: 1,
                            child: Container(
                                width: 220,
                                //color:Colors.black,
                                child: Text('立即前往',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue[300],
                                        fontSize: 12.0,
                                        // textBaseline: TextBaseline.alphabetic,
                                        fontWeight: FontWeight.w500)))),
                      ])))
            ],
          )
        ],
      ),
    );
  }
}
