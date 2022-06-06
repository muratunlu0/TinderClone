import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: MyStatefulWidget(),
      );
    });
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    swapSystem(),
    Center(
      child: Text(
        'henüz premium sayfası yok..',
        style: optionStyle,
      ),
    ),
    messagePanel(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 4,
            child: topBar(),
          ),
          Expanded(
            flex: 50,
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Premium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[400],
        onTap: _onItemTapped,
      ),
    );
  }
}

class messagePanel extends StatelessWidget {
  const messagePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            prefixIcon: Icon(
              Icons.search_outlined,
              color: Colors.black87,
              size: 25,
            ),
            hintText: 'search 2 matches..',
            hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: 12.sp,
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: 12.h,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://ath2.unileverservices.com/wp-content/uploads/sites/4/2020/02/IG-annvmariv-1024x1016.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azra Deniz",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "Really? That's great.",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "11.37am",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class swapSystem extends StatelessWidget {
  const swapSystem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Girl_in_Red_EOTR1.jpg/800px-Girl_in_Red_EOTR1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 17,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Yasemin",
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 10.sp,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Recently Active",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.sp),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "yasminben96",
                          style: TextStyle(
                              color: Colors.grey[400], fontSize: 10.sp),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("Tapped a Container");
                              },
                              child: Container(
                                height: 8.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.orange,
                                  ),
                                ),
                                child: Icon(
                                  Icons.refresh,
                                  color: Colors.orange,
                                  size: 27.sp,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Tapped a Container");
                              },
                              child: Container(
                                height: 8.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                ),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                  size: 27.sp,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Tapped a Container");
                              },
                              child: Container(
                                height: 8.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                  size: 27.sp,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Tapped a Container");
                              },
                              child: Container(
                                height: 8.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.green,
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.green,
                                  size: 27.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void test() {}
}

class topBar extends StatelessWidget {
  const topBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 4,
          ),
          Expanded(
            flex: 20,
            child: Image(
              image: NetworkImage(
                  "https://marka-logo.com/wp-content/uploads/2020/09/Tinder-Logo.png"),
            ),
          ),
          Expanded(
            flex: 4,
            child: IconButton(
              iconSize: 24.sp,
              onPressed: test,
              icon: Container(
                width: 10.w,
                height: 10.h,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new NetworkImage(
                        "https://instagram.fyei4-1.fna.fbcdn.net/v/t51.2885-19/s150x150/270322130_967575413868790_8586146183345688544_n.jpg?_nc_ht=instagram.fyei4-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=YMGFVz-OPIYAX8GKwjp&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8-sOMziO6xEXVSS3WRxOrsTozz3ecO7mUaZbhADew4JA&oe=62047416&_nc_sid=7bff83"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void test() {}
}
