import 'package:flutter/material.dart';

Future<void> main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhammad Yaseen My First Flutter App',
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [Home(), History(), UserProfile()];

  void _onItemTap(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Ecom App UI', style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ashish Rawat"),
              accountEmail: Text("ashishrawat2911@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(children: [
        Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

class Home extends StatelessWidget {
  final List chatObj = [
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Iphone",
      "reviews": "4.8 (23 Reviews)",
      "price": "10"
    },
    {
      'background':
          'https://static.vecteezy.com/system/resources/thumbnails/000/538/406/small/rae-01.jpg',
      'names': "Samsung S3",
      "reviews": "2.8 (19 Reviews)",
      "price": "245"
    },
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Iphone 5s",
      "reviews": "3.8 (218 Reviews)",
      "price": "275"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Poco M3",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://c8.alamy.com/comp/H9NF7R/colorful-square-blank-background-vector-design-concept-H9NF7R.jpg',
      'names': "Blackberry",
      "reviews": "5.0 (21 Reviews)",
      "price": "295"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Oppo S3",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://c8.alamy.com/comp/H9NF7R/colorful-square-blank-background-vector-design-concept-H9NF7R.jpg',
      'names': "Infinix",
      "reviews": "5.0 (21 Reviews)",
      "price": "295"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Iphone 12Pro",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Iphone 7s",
      "reviews": "3.8 (218 Reviews)",
      "price": "275"
    },
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Q-Mobile",
      "reviews": "3.8 (218 Reviews)",
      "price": "215"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Oppo S3",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Iphone 8Pro",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Galaxy S3",
      "reviews": "2.9 (13 Reviews)",
      "price": "125"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ...chatObj.map((item) {
              print('qwerty $item');
              return Container(
                margin:
                    EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2.0,
                        blurRadius: 2.0,
                        // offset: Offset(5, 5)
                      )
                    ]),
                child: Row(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Image.network(
                          item['background'],
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item['names'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  letterSpacing: 1.0),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                ),
                                Text(
                                  item['reviews'],
                                  style: TextStyle(color: Colors.grey[600]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '\$ 10',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            Text(
                              'Quantity: 12',
                              style: TextStyle(color: Colors.grey[600]),
                            )
                          ],
                        ))
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class History extends StatelessWidget {
  final List productHistoryObj = [
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Iphone",
      "reviews": "4.8 (23 Reviews)",
      "price": "10"
    },
    {
      'background':
          'https://static.vecteezy.com/system/resources/thumbnails/000/538/406/small/rae-01.jpg',
      'names': "Samsung S3",
      "reviews": "2.8 (19 Reviews)",
      "price": "245"
    },
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Iphone 5s",
      "reviews": "3.8 (218 Reviews)",
      "price": "275"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Poco M3",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://c8.alamy.com/comp/H9NF7R/colorful-square-blank-background-vector-design-concept-H9NF7R.jpg',
      'names': "Blackberry",
      "reviews": "5.0 (21 Reviews)",
      "price": "295"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Oppo S3",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://c8.alamy.com/comp/H9NF7R/colorful-square-blank-background-vector-design-concept-H9NF7R.jpg',
      'names': "Infinix",
      "reviews": "5.0 (21 Reviews)",
      "price": "295"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Iphone 12Pro",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Iphone 7s",
      "reviews": "3.8 (218 Reviews)",
      "price": "275"
    },
    {
      'background':
          'https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg',
      'names': "Q-Mobile",
      "reviews": "3.8 (218 Reviews)",
      "price": "215"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Oppo S3",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Iphone 8Pro",
      "reviews": "2.9 (13 Reviews)",
      "price": "25"
    },
    {
      'background':
          'https://img.freepik.com/free-vector/abstract-background_38782-946.jpg',
      'names': "Galaxy S3",
      "reviews": "2.9 (13 Reviews)",
      "price": "125"
    },
  ];

  @override
  Widget build(BuildContext context) {
    //return Container(
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.grey[400])),
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Username',
                      labelStyle:
                          TextStyle(color: Colors.grey[600], fontSize: 17),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25)),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'History',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListView.builder(
                    primary: false, // add this line
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: productHistoryObj.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.cyan[100],
                          backgroundImage: NetworkImage(
                              '${productHistoryObj[index]["background"]}'),
                        ),
                        title: Text('${productHistoryObj[index]["names"]}'),
                        //subtitle: Text('${chatObj[index]["reviews"]}'),
                        subtitle: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: '${productHistoryObj[index]["reviews"]}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              '\$${productHistoryObj[index]["price"]}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //);
  }
}

class UserProfile extends StatelessWidget {
  final List userObj = [
    {
      'username': 'Muhammad Yaseen',
      'email': 'mydev677@gmail.com',
      "phone": '+92 3121111111',
      "address": 'Abc Street House 90 LHA, Karachi',
      "gender": "Male",
      "date_of_birth": '23-10-1993',
    },
  ];

  @override
  Widget build(BuildContext context) {
    //return Container(
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: new EdgeInsets.all(10.0),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(color: Colors.grey[50], boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 13,
            spreadRadius: 2,
          )
        ]),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                height: 130,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    Container(
                      child: Image.network(
                        'https://img.icons8.com/pastel-glyph/2x/person-male.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'User',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          userObj[0]["email"],
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple[500]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text(
                  'ACCOUNT INFORMATION',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        userObj[0]["username"],
                        style: TextStyle(fontSize: 16),
                      )),
                  trailing: Icon(Icons.edit),
                ),
              ),
              Container(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        userObj[0]["email"],
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ),
              Container(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      'Phone',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        userObj[0]["phone"],
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ),
              Container(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        userObj[0]["address"],
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ),
              Container(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      'Gender',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        userObj[0]["gender"],
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ),
              Container(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      'Date of Birth',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        userObj[0]["date_of_birth"],
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
