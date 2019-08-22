import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _cardMain(String _name, IconData _icon) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFFE4E9EE),
              ),
              child: Icon(
                _icon,
                size: 30,
                color: Color(0XFF2C3E50),
              ),
            ),
            Container(
                child: Center(
              child: Text(
                _name,
                style: TextStyle(
                    color: Color(0XFF2C3E50),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget _transaction(String _name, IconData _icon) {
    return Container(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.black26,
            width: 1,
          ),
        ),
        child: InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 6),
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0XFF4D6C8B), Color(0XFF2C3E50)]),
                  ),
                  child: Icon(
                    _icon,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Text(
                    _name,
                    style: TextStyle(
                      color: Color(0XFF2C3E50),
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Widget _nearbyMe(
      String _images, String _name, String _address, String _rating) {
    return Container(
      margin: EdgeInsets.only(left: 5, bottom: 10, right: 0),
      child: Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 190.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(_images),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Text(
                                    _name,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.amber,
                                size: 16,
                              ),
                              Text(
                                _rating,
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 16),
                              ),
                            ],
                          ),
                          Text(
                            _address,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                print('Tap detail petshop.');
              },
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.directions,
                      color: Colors.blue,
                      size: 16,
                    ),
                    Text(
                      ' Directions',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              onTap: () {
                print('Tap Directions.');
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0XFF4D6C8B), Color(0XFF2C3E50)]),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'DompetKulo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Badge(
                        badgeContent: Text(
                          '5',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        badgeColor: Colors.red,
                        shape: BadgeShape.square,
                        borderRadius: 3,
                        child: InkWell(
                          child: Icon(
                            MdiIcons.bellOutline,
                            color: Colors.white,
                            size: 32,
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55, left: 20, right: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    color: Color(0XFF768696),
                    child: Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 10),
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 2,
                                )
                              ],
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/Foto.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Indra Wijaya',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: Color(0XFF23FF82),
                                    ),
                                    Text(
                                      'Rp 30.000,00',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          IconButton(
                            icon: Icon(
                              MdiIcons.settingsOutline,
                              color: Colors.white,
                              size: 26,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    color: Colors.white,
                    child: Container(
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: _cardMain('Top Up', MdiIcons.walletPlus),
                          ),
                          Flexible(
                            child: _cardMain('Pay', MdiIcons.cash),
                          ),
                          Flexible(
                            child: _cardMain(
                                'Transfer', FontAwesomeIcons.solidPaperPlane),
                          ),
                          Flexible(
                            child: _cardMain('Request', MdiIcons.cashRefund),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5),
              color: Colors.transparent,
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 2.8 / 1,
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  _transaction('Mobile Credit', MdiIcons.cellphoneText),
                  _transaction('Internet Data', MdiIcons.cellphoneWireless),
                  _transaction('Water (PDAM)', MdiIcons.airFilter),
                  _transaction('Electricity', MdiIcons.flash),
                  _transaction('Charity', MdiIcons.charity),
                  _transaction('Games', MdiIcons.gamepadVariant),
                  _transaction('Bill Payment', MdiIcons.receipt),
                  _transaction('See All', MdiIcons.dotsHorizontalCircle),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 3,
                color: Colors.transparent,
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/Promo.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    height: 90,
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      FontAwesomeIcons.store,
                      color: Color(0XFF4D6C8B),
                      size: 20,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Nearby Me',
                        style:
                            TextStyle(color: Color(0XFF4D6C8B), fontSize: 22),
                      ),
                      Text(
                        'Find DompetKulo merchant near your area!',
                        style:
                            TextStyle(color: Color(0XFF4D6C8B), fontSize: 11),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: Color(0XFF4D6C8B),
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 240,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  _nearbyMe("assets/1.jpg", "JPM Trona",
                      "Jl. Kasuari RT.09, Kel. Jambi Selatan", " 4,6"),
                  _nearbyMe("assets/2.jpg", "Transmart Jambi",
                      "Jl. Cendrawasih No.20 Kel.Jambi Selatan", " 4,5"),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BubbleBottomBar(
          opacity: 1.0,
          currentIndex: 0,
          onTap: null,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          elevation: 8,
          hasInk: true,
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
              backgroundColor: Color(0XFF4D6C8B),
              icon: Icon(
                FontAwesomeIcons.home,
                color: Color(0XFF4D6C8B),
              ),
              activeIcon: Icon(
                FontAwesomeIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: Color(0XFF4D6C8B),
              icon: Icon(
                FontAwesomeIcons.history,
                color: Color(0XFF4D6C8B),
              ),
              activeIcon: Icon(
                FontAwesomeIcons.history,
                color: Colors.white,
              ),
              title: Text(
                'History',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: Color(0XFF4D6C8B),
              icon: Badge(
                badgeContent: Text(
                  '5',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                badgeColor: Colors.red,
                shape: BadgeShape.square,
                borderRadius: 3,
                child: Icon(
                  MdiIcons.bellOutline,
                  color: Color(0XFF4D6C8B),
                ),
              ),
              activeIcon: Icon(
                MdiIcons.bellOutline,
                color: Colors.white,
              ),
              title: Text(
                'Notification',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: Color(0XFF4D6C8B),
              icon: Icon(
                FontAwesomeIcons.user,
                color: Color(0XFF4D6C8B),
              ),
              activeIcon: Icon(
                FontAwesomeIcons.user,
                color: Colors.white,
              ),
              title: Text(
                'User',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 180);
    path.quadraticBezierTo(size.width / 2, 240, size.width, 180);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
