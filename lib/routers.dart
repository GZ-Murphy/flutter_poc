import 'pages/app_home.dart';
import 'pages/bbs.dart';
import 'pages/member_club.dart';
import 'pages/message.dart';
import 'pages/my_profile.dart';

final  routerMap = {
      '/': (context) => AppHomePage(),
      '/club': (context) => MemberClubPage(),
      '/bbs': (context) => BBSPage(),
      '/msg': (context) => MSGPage(),
      '/profile': (context) => ProfilePage(),
    };
// final List routerList = ['/','/bbs','/club','/msg','/profile'];

