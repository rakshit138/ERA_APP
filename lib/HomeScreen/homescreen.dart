import 'package:ERA/VideoLibrary/MyHomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Color(0xff03258C),
          centerTitle: true,
          title: Text(
            'ERA',
            style: TextStyle(
                fontFamily: 'Merriweather',
                color: Colors.amber,
                fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/logo png 3.png'),
                      height: 50,
                      width: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('ERA',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Merriweather')),
                    ),
                    Text('Assistant to Redefine Education',
                        style: TextStyle(
                            color: Colors.white, // Color(0xff03258C),
                            fontSize: 20,
                            fontFamily: 'Dancing Script')),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                          Colors.grey.withOpacity(0.2),
                          BlendMode.dstATop,
                        ),
                        image: AssetImage('assets/images/headerBackground.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  dense: true,
                ),
              ),
              ListTile(
                leading: Icon(Icons.web),
                title: Text(
                  'Website',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              Divider(
                color: Colors.grey[200],
                height: 10,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                title: Text('Courses',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.iso),
                title: Text(
                  'Mathematics',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text(
                  'Science',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.lightbulb_outline),
                title: Text(
                  'Aptitude and Logical',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.mood),
                title: Text(
                  'Soft Skills',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Coding',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              Divider(
                color: Colors.grey[200],
                height: 10,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                title: Text('Features',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.video_library),
                title: Text(
                  'Video Library',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VideoPage()));
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(
                  'Start Scholarship Test',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.live_tv),
                title: Text(
                  'Live Classroom',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.keyboard_backspace),
                title: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  _auth.signOut();
                },
                dense: true,
              ),
            ],
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderImg(),
                VideoExample(),
                Intro(),
                Features(),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Our Awe-inspiring Faculty',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Faculty(),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Our Packs Include...',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.grey[600],
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'For classes 6,7 and 8',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.grey[600],
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                Packages(),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'For class 9 and 10',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.grey[600],
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                HigheClassPackages(),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Our Monsoon Offers...',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.grey[600],
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Offers(),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Parents Testimonials',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.grey[600],
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Testimonials(),
                ImageSlider(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: Text(
                    'Always at your service...',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Our Academic Advisors',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.grey[800],
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                Advisors(),
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.grey[200]),
      width: MediaQuery.of(context).size.width,
      child: Image(image: AssetImage('assets/images/header.jpeg')),
    );
  }
}

class VideoExample extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExample> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset("assets/videos/Intro.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..setLooping(true)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        // playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Container(
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                child: (playerController != null
                    ? VideoPlayer(
                        playerController,
                      )
                    : Container(
                        decoration: new BoxDecoration(
                          color: Colors.black,
                        ),
                      )),
              )),
        ),
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            createVideo();
            playerController.play();
          },
        )
      ]),
    );
  }
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'What is ERA ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Merriweather',
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'ERA is a brand new and extremely helpful platform where students can learn and grow their potentials even when they are away from their school. ERA has extremely qualified faculty for every subject that a student might need growing up. So what, if you missed your school we still got you covered. You can learn any subject anywhere anytime.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Why ERA ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Merriweather',
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: FaIcon(
            FontAwesomeIcons.users,
            size: 50,
            color: Colors.blue,
          ),
          title: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Only Limited students are present per class.',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Merriweather',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'ERA helps the students to clear their doubts and concept properly with a Direct interaction with the Teacher.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          leading: FaIcon(
            FontAwesomeIcons.graduationCap,
            size: 50,
            color: Colors.blue[900],
          ),
          title: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'All the students in a Class are of same level.',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Merriweather',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'ERA helps the students to improve their skills in a personalized manner with the proper competition.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ListTile(
            leading: FaIcon(
              FontAwesomeIcons.userTie,
              size: 50,
              color: Colors.blue,
            ),
            title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Best Teacher of ERA at your Home.',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Merriweather',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'ERA have best faculty from different states of India to clear doubts of the students int the personalized space of student.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ListTile(
            leading: FaIcon(
              FontAwesomeIcons.listAlt,
              size: 50,
              color: Colors.blue[900],
            ),
            title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Personalized Mentor for every student & Parents.',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Merriweather',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'Personal Mentor is available for every student to guide them, how to convert their weakness into strength which helps them to achieve their goals and provide the weekly report to the parents about the progress of Student.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bolt,
              size: 50,
              color: Colors.blue,
            ),
            title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Overall development of Student.',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Merriweather',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'ERA prepares the student accprding to the upcoming competition, we work on Soft Skills and Aptitude & Logical Reasoning with Maths and Science for the overall development of a Student.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ListTile(
            leading: FaIcon(
              FontAwesomeIcons.rupeeSign,
              size: 50,
              color: Colors.blue[900],
            ),
            title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Available in affordable Prices.',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Merriweather',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'The team ERA is on a mission to provide service at affordable prices to help the students in this pandemic situation and we also have a Scholarship test through which students grab an opportunity to learn with our faculty.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          leading: FaIcon(
            FontAwesomeIcons.moneyBillWave,
            size: 50,
            color: Colors.blue,
          ),
          title: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Refund Policy',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Merriweather',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(100, 5, 15, 5),
          child: Text(
            'We are committed to provide the best Assistant to Redefine Education but after enrolling with ERA if found that you are unable to continue, we have Refund Policy for you with a cancellation charge i.e Rs. 299 + amount of class you attend till date.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class Faculty extends StatefulWidget {
  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  Container buildKey({Column column}) {
    return Container(
      child: column,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 400.0,
      width: (MediaQuery.of(context).size.width) / 1.15,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(4.0, 4.0),
              blurRadius: 5.0,
              spreadRadius: 2.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      height: 500.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/mehak.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Mehak | Maths Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'NIT, Kurukshetra',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/khushboo.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Khushboo | Science Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'GATE 2020 AIR 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/varsha.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Varsha | Soft Skill Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'DU, Delhi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/aiswarya.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Ayswarya Alex | A&LR Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'Kerala, India',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/Poornimapng.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Poornima | Maths Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'NIT, Nagpur',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/Raushanpng.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Raushan | Maths Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'NIT, Goa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/Abhijit_png.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Abhijit | Science Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'DU, Delhi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/Nisha_png.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Nisha | Physics Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'Haryana, India',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          buildKey(
              column: Column(
            children: [
              Image(
                height: 400,
                width: 400,
                image: AssetImage('assets/images/Anjalipng.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Anjali | Science Trainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  'Haryana, India',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  Container packageColumn({Column column}) {
    return Container(
      child: column,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 400.0,
      width: (MediaQuery.of(context).size.width) / 1.15,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(4.0, 4.0),
              blurRadius: 5.0,
              spreadRadius: 2.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 400.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'One Subject/Year',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 6,7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '154 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 9999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'One Subject/6 Months',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 6,7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '78 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 5499 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'One Subject/3 Months',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 6,7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '40 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 3599 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Yearly Combo Offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 6,7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '310 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 18,999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Half Yearly Combo Offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 6,7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '156 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 11,999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Quaterly Combo Offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 6,7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '80 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 6999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
        ],
      ),
    );
  }
}

class HigheClassPackages extends StatefulWidget {
  @override
  _HigheClassPackagesState createState() => _HigheClassPackagesState();
}

class _HigheClassPackagesState extends State<HigheClassPackages> {
  Container packageColumn({Column column}) {
    return Container(
      child: column,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 400.0,
      width: (MediaQuery.of(context).size.width) / 1.15,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(4.0, 4.0),
              blurRadius: 5.0,
              spreadRadius: 2.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 400.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'One Subject/Year',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '154 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 11,999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'One Subject/6 Months',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '78 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 6499 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'One Subject/3 Months',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '40 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 4599 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Yearly Combo Offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '310 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 22,999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Half Yearly Combo Offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '156 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 12,999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          packageColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Quaterly Combo Offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '80 Lectures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 7999 /- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
        ],
      ),
    );
  }
}

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  Container offerColumn({Column column}) {
    return Container(
      child: column,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 300.0,
      width: (MediaQuery.of(context).size.width) / 1.15,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(4.0, 4.0),
              blurRadius: 5.0,
              spreadRadius: 2.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          offerColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Monsoon offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 7 and 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 1200/- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
          offerColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Monsoon offer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Class 9 and 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '\u20B9 1500/- only',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Text(
                    'More Details',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue[900]),
                  ))
            ],
          )),
        ],
      ),
    );
  }
}

class Testimonials extends StatefulWidget {
  @override
  _TestimonialsState createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials> {
  Container testimonialColumn({Column column}) {
    return Container(
      child: column,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 440.0,
      width: (MediaQuery.of(context).size.width) / 1.15,
      decoration: new BoxDecoration(
        color: Colors.grey[100],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 400.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          testimonialColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '"Era improves the result of my child,with committed teachers at affordable price"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mrs. Poonam Chauhan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Yash's Mother ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Saharanpur, Uttar Pradesh",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontSize: 16),
                ),
              ),
            ],
          )),
          testimonialColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '"Teachers are dedicated and cleared all the doubts patiently"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mr. Mahender Singh',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Manvi's Father ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Delhi-NCR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontSize: 16),
                ),
              ),
            ],
          )),
          testimonialColumn(
              column: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '"I see a positive attitude in my son after enrolling with ERA"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mrs. Pandey',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Merriweather',
                      color: Colors.black,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Chirag's Mother ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Silvassa, (Dadra & Nagar Haveli)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.grey[600],
                      fontSize: 16),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.grey[100]),
                child: Image(image: AssetImage('assets/images/IMG$i.jpg')));
          },
        );
      }).toList(),
    );
  }
}

class Advisors extends StatefulWidget {
  @override
  _AdvisorsState createState() => _AdvisorsState();
}

class _AdvisorsState extends State<Advisors> {
  Container advisorsColumn({Column column}) {
    return Container(
      child: column,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 400.0,
      width: (MediaQuery.of(context).size.width) / 1.15,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(4.0, 4.0),
              blurRadius: 5.0,
              spreadRadius: 2.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      height: 500.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          advisorsColumn(
              column: Column(
            children: [
              Image(
                image: AssetImage('assets/images/sourav.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Mr. Sourav Tiwari',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                child: Text(
                  'Contact No.: 7226860512',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Text(
                  'Email: sauravtiwari@era-co.in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
          advisorsColumn(
              column: Column(
            children: [
              Image(
                image: AssetImage('assets/images/Abhaypng.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Mr. Abhay Sharma',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                child: Text(
                  'Contact No.: 9671712583',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Text(
                  'Email: abhaysharma@era-co.in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                    fontFamily: 'Merriweather',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: (MediaQuery.of(context).size.width),
        height: 500,
        decoration: new BoxDecoration(color: Color(0xff03258C)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'ERA-Assistant to Redefine Education',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  color: Colors.amber,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Strot Associate presents ERA to redefine Education for the overall development of a student. ERA is an online platform for online tutorial sessions, where students can meet up with their needs by using a real-time virtual learning/lessons and can master the basic concepts for clearer vision',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        size: 40,
                        color: Colors.amber,
                      ),
                      onPressed: null),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 40,
                        color: Colors.amber,
                      ),
                      onPressed: null),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 40,
                        color: Colors.amber,
                      ),
                      onPressed: null),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 40,
                        color: Colors.amber,
                      ),
                      onPressed: null),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            color: Colors.blueGrey[200],
                            fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            color: Colors.blueGrey[200],
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'ERA \u00a9 2020 | Made in India',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  color: Colors.brown[200],
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
