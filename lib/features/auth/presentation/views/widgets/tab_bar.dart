import 'package:eyadty_app/features/auth/presentation/views/widgets/box_signup_with_email.dart';
import 'package:flutter/material.dart';

import 'box_signup_with_phon.dart';



class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (!_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            child: TabBar(
              controller: _tabController,
              isScrollable: false,
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: _tabController.index == 0
                          ? Colors.green[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            'Sign Up With Phone', // الاسم الأول للتبويب
                            style: TextStyle(
                              color: _tabController.index == 0
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(width: 4,),
                          Icon(Icons.phone)
                        ],
                      ),
                    ),
                  ),
                ),

                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: _tabController.index == 1
                          ? Colors.green[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(20),bottomRight: Radius.circular(20)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            'Sign Up With Email', // الاسم الثالث للتبويب
                            style: TextStyle(
                              color: _tabController.index == 1
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(width: 4,),
                          Icon(Icons.email_outlined,color: Color(0xff07de9c),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              indicatorColor: Colors.transparent,
            ),
          ),
          Container(
            height: 570,
            child: TabBarView(
              controller: _tabController,
              children: [

                BoxSignupWithPhon(),
                BoxSignupWithEmail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
