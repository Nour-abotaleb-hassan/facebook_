import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int screen = 0;
    int selectedTab = 0;
    bool splashStarted = false;
    bool hidePassword = true;
    bool liked = false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatefulBuilder(
        builder: (context, setState) {
          if (screen == 0) {
            if (!splashStarted) {
              splashStarted = true;
              Future.delayed(Duration(seconds: 2), () {
                setState(() {
                  screen = 1;
                });
              });
            }
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color(0xff1877F2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              'f',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 75,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Text(
                        '∞ Meta',
                        style: TextStyle(
                          color: Color(0xff1877F2),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          if (screen == 1) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(28, 42, 28, 20),
                    child: Column(
                      children: [
                        Container(
                          width: 78,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xff1877F2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              'f',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 66,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 34),
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F6F7),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xffCED0D4)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mobile Number or Email address',
                              hintStyle: TextStyle(color: Color(0xff898F9C)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 15,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F6F7),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xffCED0D4)),
                          ),
                          child: TextField(
                            obscureText: hidePassword,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Color(0xff898F9C)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 15,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () => setState(
                                  () => hidePassword = !hidePassword,
                                ),
                                icon: Icon(
                                  hidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color(0xff898F9C),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => setState(() => screen = 2),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1877F2),
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text('Login', style: TextStyle(fontSize: 16)),
                          ),
                        ),
                        TextButton(
                          onPressed: () => ScaffoldMessenger.of(context)
                              .showSnackBar(
                            SnackBar(content: Text('Forgot your password?')),
                          ),
                          child: Text(
                            'Forgotten Password?',
                            style: TextStyle(color: Color(0xff1877F2)),
                          ),
                        ),
                        SizedBox(height: 18),
                        OutlinedButton(
                          onPressed: () => ScaffoldMessenger.of(context)
                              .showSnackBar(
                            SnackBar(content: Text('Create Account')),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(double.infinity, 48),
                            foregroundColor: Color(0xff1877F2),
                            side: BorderSide(color: Color(0xff1877F2)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text('Create Account'),
                        ),
                        SizedBox(height: 38),
                        Text(
                          '∞ Meta',
                          style: TextStyle(
                            color: Color(0xff1877F2),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return Scaffold(
            backgroundColor: Color(0xffF0F2F5),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 52,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'facebook',
                            style: TextStyle(
                              color: Color(0xff1877F2),
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 46,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () => setState(() => selectedTab = 0),
                            icon: Icon(Icons.home),
                            color: selectedTab == 0
                                ? Color(0xff1877F2)
                                : Color(0xff898F9C),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () => setState(() => selectedTab = 1),
                            icon: Icon(Icons.ondemand_video),
                            color: selectedTab == 1
                                ? Color(0xff1877F2)
                                : Color(0xff898F9C),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () => setState(() => selectedTab = 2),
                            icon: Icon(Icons.storefront),
                            color: selectedTab == 2
                                ? Color(0xff1877F2)
                                : Color(0xff898F9C),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () => setState(() => selectedTab = 3),
                            icon: Icon(Icons.people_outline),
                            color: selectedTab == 3
                                ? Color(0xff1877F2)
                                : Color(0xff898F9C),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () => setState(() => selectedTab = 4),
                            icon: Icon(Icons.notifications_none),
                            color: selectedTab == 4
                                ? Color(0xff1877F2)
                                : Color(0xff898F9C),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () => setState(() => selectedTab = 5),
                            icon: Icon(Icons.menu),
                            color: selectedTab == 5
                                ? Color(0xff1877F2)
                                : Color(0xff898F9C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(top: 8),
                      children: [
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/model4.jpg'),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffE4E6EB),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'What’s in Your Mind?',
                                      hintStyle: TextStyle(
                                        color: Color(0xff898F9C),
                                        fontSize: 15,
                                      ),
                                      border: InputBorder.none,
                                      isDense: true,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.image, color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          height: 220,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            children: [
                              Container(
                                width: 102,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Color(0xffE4E6EB)),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(12),
                                        ),
                                        child: Image.asset(
                                          'assets/images/model3.jpg',
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 28),
                                    Text(
                                      'Create a Story',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                              Container(
                                width: 102,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/model2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Mariam',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 102,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/model1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Ahmed',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 102,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/image4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Nour',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 102,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/image1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Buddy',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/route_blue.jpg'),
                                ),
                                title: Text(
                                  'Route',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text('8h · Public'),
                                trailing: Icon(Icons.more_horiz),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'A new day, a new chance to learn something great.',
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/images/route_logo.jpg',
                                width: double.infinity,
                                height: 240,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: [
                                    Icon(Icons.thumb_up, color: Color(0xff1877F2), size: 17),
                                    SizedBox(width: 5),
                                    Text(liked ? '121' : '120'),
                                    Spacer(),
                                    Text('40 Comments'),
                                  ],
                                ),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextButton.icon(
                                      onPressed: () => setState(() => liked = !liked),
                                      icon: Icon(
                                        liked ? Icons.thumb_up : Icons.thumb_up_outlined,
                                        color: liked ? Color(0xff1877F2) : Color(0xff606770),
                                      ),
                                      label: Text('Like'),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.chat_bubble_outline),
                                      label: Text('Comment'),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.share_outlined),
                                      label: Text('Share'),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_border),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 260,
                          color: Colors.white,
                          child: Image.asset(
                            'assets/images/image2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

