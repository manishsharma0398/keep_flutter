import 'package:flutter/material.dart';
import 'package:keep/pages/finance/AddTransaction.dart';

import '../../utils/styles.dart';

class FinanceHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: RawMaterialButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddTransactionPage(),
              ),
            );
          },
          elevation: 0,
          fillColor: Colors.amber[600],
          child: Icon(
            Icons.add,
            // color: Colors.white,
            size: 25.0,
          ),
          padding: EdgeInsets.all(10.0),
          shape: CircleBorder(),
        ),
        backgroundColor: Color(0xFF7A1BE5),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                FinanceHomePageHeader(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        // backgroundColor: Colors.blue,
                        body: TabBar(
                          indicatorColor: Colors.deepOrange,
                          indicatorWeight: 3,
                          indicatorSize: TabBarIndicatorSize.label,
                          // indicator: BoxDecoration(
                          // shape: BoxShape.circle, color: Colors.deepOrange),
                          labelColor: Colors.grey,
                          tabs: [
                            Tab(
                              child: Text(
                                "Daily",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Weekly",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Monthly",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ]));
  }
}

class FinanceHomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Balance ₹",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            "Total Balance",
            style: TextStyle(
                color: Colors.white, letterSpacing: 0.5, fontSize: 12),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: (MediaQuery.of(context).size.width - 38) / 2,
                // height: 20,
                child: Column(
                  children: [
                    Text(
                      '+500 ₹',
                      style: TextStyle(
                        color: purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Income'),
                  ],
                ),
              ),
              // SizedBox(width: 16),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: (MediaQuery.of(context).size.width - 38) / 2,
                // height: 20,
                child: Column(
                  children: [
                    Text(
                      '-500 ₹',
                      style: TextStyle(
                        color: youtubeRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Expense'),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
