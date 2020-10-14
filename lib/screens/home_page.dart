import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: FlutterLogo(
          style: FlutterLogoStyle.markOnly,
          textColor: Colors.green,
          size: 30.0,
        ),
        centerTitle: true,
        leading: IconButton(
          color: Colors.green[800],
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            color: Colors.green[800],
            icon: Icon(Icons.menu_open),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
                width: double.infinity,
                height: 100.0,
                alignment: Alignment(0.0, -0.80),
                // color: Colors.green[200],
                child: Text(
                  'Get Coaching',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                    color: Colors.green[700],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 20.0),
                          child: Text(
                            '204',
                            style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(100.0, 55.0, 5.0, 5.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 50,
                      minWidth: 120,
                      color: Colors.green[100].withOpacity(0.5),
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                            color: Colors.green[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: [
              _buildCard('Dibbo', 'Available', 1),
              _buildCard('Dibbo', 'Away', 2),
              _buildCard('Dibbo', 'Avaliable', 3),
              _buildCard('Dibbo', 'Avaliable', 4),
              _buildCard('Dibbo', 'Away', 5),
              _buildCard('Dibbo', 'Away', 6),
              _buildCard('Dibbo', 'Away', 7),
              _buildCard('Dibbo', 'Avaliable', 8),
              // SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 10.0)
          : EdgeInsets.fromLTRB(25.0, 10.0, 5.0, 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Stack(
            children: [
              CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage(
                    'https://cdn.searchenginejournal.com/wp-content/uploads/2019/08/c573bf41-6a7c-4927-845c-4ca0260aad6b-760x400.jpeg'),
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   height: 60.0,
          //   width: 60.0,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30.0),
          //     color: Colors.green,
          //     image: DecorationImage(
          //       image: NetworkImage(
          //           'https://cdn.searchenginejournal.com/wp-content/uploads/2019/08/c573bf41-6a7c-4927-845c-4ca0260aad6b-760x400.jpeg'),
          //     ),
          //   ),
          // ),
          SizedBox(height: 10.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            status,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green[500],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  'REQUEST',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // ],
          // ),
        ],
      ),
    );
  }
}
