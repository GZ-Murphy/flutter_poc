import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../routers.dart';



class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation( {Key key, this.pageIdx}) : super(key: key);
  final int pageIdx;
 
  @override
  State<StatefulWidget> createState() => _BottomNavigationBarState();
}

// BottomNavigationBar 默认的实例,有状态
class _BottomNavigationBarState extends State<AppBottomNavigation> {

List _routerList = [];

@override
void initState() {
    routerMap.forEach((k,v)=> {
      _routerList.add(k)
    });
    super.initState();
  }

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        Navigator.push(context, CupertinoPageRoute(builder: routerMap[_routerList[index]]));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType
          .fixed, // BottomNavigationBarType 中定义的类型，有 fixed 和 shifting 两种类型
      iconSize: 24.0, // BottomNavigationBarItem 中 icon 的大小
      //currentIndex: _currentIndex, // 当前所高亮的按钮index
      onTap: _onItemTapped, // 点击里面的按钮的回调函数，参数为当前点击的按钮 index
      fixedColor:
      Colors.green, // 如果 type 类型为 fixed，则通过 fixedColor 设置选中 item 的颜色
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      currentIndex:widget.pageIdx,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
        BottomNavigationBarItem(title: Text("会员会所"), icon: Icon(Icons.account_balance)),
        BottomNavigationBarItem(title: Text("论坛"), icon: Icon(Icons.menu)),
        BottomNavigationBarItem(
            title: Text("信息"), icon: Icon(Icons.message)),

        BottomNavigationBarItem(
            title: Text("我的"), icon: Icon(Icons.account_circle)),
      ],
    );
  }
}
