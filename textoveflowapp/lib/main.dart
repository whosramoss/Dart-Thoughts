import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Singer {
  String name;
  String icon;
  String text;
  Singer({this.name, this.icon, this.text});
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Singers',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gotham',
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'see your favorite singers\nand more',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gotham',
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: SingerList(context: context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingerList extends StatelessWidget {
  final BuildContext context;
  SingerList({this.context});

  List<Singer> listSinger = [
    Singer(
      name: 'Jesse Rutherford',
      icon: 'https://www.radiorock.com.br/wp-content/uploads/2018/02/Jesse.jpg',
      text: "Rutherford was born in California (Newbury Park). "
          "Since young that he is involved on the entertainment industry. "
          "As a child, he used to perform in Talent shows where he impersonated N'Sync "
          "members and Elvis Presley. This passion to perform lead Rutherford to work on"
          " TV commercials (such as Hallmark) and then on Films & TV projects such as the "
          "role in the 2002 film Life or Something Like It, followed by a role in the 2002 film Bundy. In 2002,"
          " Rutherford had also a small television role in the Star Trek: Enterprise episode Marauders."
          " Throughout his teen years, he was part of a few local bands as a singer.",
    ),
    Singer(
      name: 'Alex Turner',
      icon: 'https://i.redd.it/6kb3o3sz293z.jpg',
      text:
          "Alexander David Turner (born 6 January 1986) is an English musician, "
          "singer, songwriter, and record producer. He is best known as the frontman and "
          "principal songwriter of the rock band Arctic Monkeys, with whom he has released six albums."
          " He has also recorded with his side project The Last Shadow Puppets and as a solo artist.",
    ),
    Singer(
      name: 'The Weeknd',
      icon:
          'https://i.pinimg.com/originals/b2/13/0e/b2130e97e770ab3bef9b5aee38ca4501.jpg',
      text:
          'Canadian singer, songwriter, and record producer.[1] He began his recording career in 2010, anonymously uploading several songs to YouTube. A year later, the Weeknd released the mixtapes House of Balloons, Thursday, and Echoes of Silence, and quickly earned a following and critical recognition from several mainstream publications due to his dark style of R&B and the mystique surrounding his identity.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: listSinger.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return singer(context, listSinger[index], index);
      },
    );
  }

  Widget singer(BuildContext context, Singer singer, index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0, left: 5),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(singer.icon),
              backgroundColor: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                singer.name,
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  singer.text,
                  overflow: TextOverflow.clip,
                  // overflow: TextOverflow.fade,
                  // overflow: TextOverflow.ellipsis,
                  // overflow: TextOverflow.visible,
                  maxLines: 4,
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    color: Colors.black45,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
