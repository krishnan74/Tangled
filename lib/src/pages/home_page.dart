import 'package:flutter/material.dart';
import 'package:my_app/src/helper/quad_clipper.dart';
import 'package:my_app/src/pages/recomended_page.dart';
import 'package:my_app/src/theme/color/light_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 200,
          width: width,
          decoration: BoxDecoration(
            color: LightColor.purple,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 30,
                  right: -100,
                  child: _circularContainer(300, LightColor.lightpurple)),
              Positioned(
                  top: -100,
                  left: -45,
                  child: _circularContainer(width * .5, LightColor.darkpurple)),
              Positioned(
                  top: -180,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: [
                                  Text(
                                    "Dr.Issac, M.D.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "Neurosurgeon",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              const CircleAvatar(
                                  radius: 35,
                                  backgroundImage: NetworkImage(
                                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDJSWUR4fM7MMxMMjKvagCZkkgijJ38YvtqMdYSQaqclLNfq7l_bUTRNReUyKu_umW_-alVOXntCl9yCXWxa_IPl7ukC0LDFtAUqHsekWjuW6SzzAbWwZrYetscx83RzElMl4X4kOtBWKndL3q0u8mBChfpaoIa05bJTWMpreMI-bAbXle9tBCS3Zd/s612/istockphoto-177373093-612x612.jpg"))
                            ],
                          ),
                        ],
                      )))
            ],
          )),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  Widget _categoryRow(
    String title,
    Color primary,
    Color textColor,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.titleTextColor, fontWeight: FontWeight.bold),
          ),
          _chip("See all", primary)
        ],
      ),
    );
  }

  Widget _featuredRowA(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: LightColor.orange,
                  backWidget:
                      _decorationContainerA(LightColor.lightOrange, 50, -30),
                  chipColor: LightColor.orange,
                  chipText1: "Ashwin",
                  chipText2: "Dementia",
                  isPrimaryCard: true,
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi30gtyEowunFNv4LkNgMUTnQuqwBEWIuoZJaK7LFlGuu-UwVdPH1ja-WT5szXsMzYVvJtpTKOQBcPuftVU4xzpAThJRhye1rRFlHWoT3ywrkMxnRiiZQBbmtgg3rH1SWgAU3zkHmaBRiDup9aKKOkjx1BbmpMXZklSOX2N4HufjJBa83XGvNYbI6kX/s612/gettyimages-1335872429-612x612.jpg"),
            ),
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: Colors.white,
                  chipColor: LightColor.lightpurple,
                  backWidget: _decorationContainerE(
                    LightColor.lightpurple,
                    90,
                    -40,
                    secondary: LightColor.lightseeBlue,
                  ),
                  chipText1: "Jade",
                  chipText2: "Depression",
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpMr-DUCpcdCJbKogu-Wi4xSnE3RB_osXxO3Dx_mP_OMsBZBhe50LRVOrw6bgR5PT677Dfree4aWz2XZka3wOJgZMZlJAdsSQzUsR0TWKiUPPUL7zXR45pV1-bS9oegQBAjzcavI2T0T6Fks-vAnbuSc5uhNm1K4vrEK66HqSx7uxF-4x8fLZShOcN/s612/gettyimages-1213508559-612x612.jpg"),
            ),
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: Colors.white,
                  chipColor: LightColor.lightOrange,
                  backWidget: _decorationContainerC(Colors.white, 50, -30),
                  chipText1: "Freedan",
                  chipText2: "Anxiety",
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEheLa9KGv6FI2kSc4QEqjyONsuRKW32HBdX3vUoK5_KTI6EpsNQDG-gx958-0d8OuIEI79wBCOSjyaLOvnGLDOLK0y25s83o20S--4alG2UvgOU4b52uHmdBxWtmVO7OuZzfUEJLJp4uQAIX23Z6MS6Roj7JRigUkD15JJDEDVLHpa890tKBk_5mEt_/s612/gettyimages-1141737652-612x612.jpg"),
            ),
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: Colors.white,
                  chipColor: LightColor.seeBlue,
                  backWidget: _decorationContainerD(LightColor.seeBlue, -50, 30,
                      secondary: LightColor.lightseeBlue,
                      secondaryAccent: LightColor.darkseeBlue),
                  chipText1: "Kumar",
                  chipText2: "Depression",
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjC2-OUxeF39P7RRzaao24YO9CG6qIYXKQALQqp7BoZtvAwLD3CZpNCEcLYaFbTlvwK382PU3-kwXW2MEKWPHQwKYxS0iyGoaReB_Mxf6U6FASutSUIN8d_Rf9BBCAIg-aYJYl-R2Lobeerm2eJsF2GCJTr7RVDPcLuyhHWYwDspQCi65cJ9qp7WGji/s320/gettyimages-1213291408-612x612.jpg"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _featuredRowB(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: LightColor.seeBlue,
                  chipColor: LightColor.seeBlue,
                  backWidget: _decorationContainerD(
                      LightColor.darkseeBlue, -100, -65,
                      secondary: LightColor.lightseeBlue,
                      secondaryAccent: LightColor.seeBlue),
                  chipText1: "Nithin ",
                  chipText2: "Schizoprenia",
                  isPrimaryCard: true,
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh9uBjvfOd6OlaYV-8_QiiR8ZEaafCx2P8UakQpA2rcykCr7GI_ZauYRjN7CGpFujdlox0jIwafG1GAr2ufY2Pk2wUX_H6-breQTZ12HKQlqcd5iQhoKV2K7MFVzU1fjRrZQvHWBhRyZPDnke2bRp6dNuhUb4o9TIUwySQGLU_JP4GVjI9iq-cFnSlQ/s612/gettyimages-1159948727-612x612.jpg"),
            ),
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: Colors.white,
                  chipColor: LightColor.lightpurple,
                  backWidget: _decorationContainerE(
                    LightColor.lightpurple,
                    90,
                    -40,
                    secondary: LightColor.lightseeBlue,
                  ),
                  chipText1: "Freedan",
                  chipText2: "Anxiety",
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEheLa9KGv6FI2kSc4QEqjyONsuRKW32HBdX3vUoK5_KTI6EpsNQDG-gx958-0d8OuIEI79wBCOSjyaLOvnGLDOLK0y25s83o20S--4alG2UvgOU4b52uHmdBxWtmVO7OuZzfUEJLJp4uQAIX23Z6MS6Roj7JRigUkD15JJDEDVLHpa890tKBk_5mEt_/s612/gettyimages-1141737652-612x612.jpg"),
            ),
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: Colors.white,
                  chipColor: LightColor.lightOrange,
                  backWidget: _decorationContainerF(
                      LightColor.lightOrange, LightColor.orange, 50, -30),
                  chipText1: "Priya",
                  chipText2: "Depression",
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEizXQB_TJVeqtZ_q1qnpc8deNVcYNuy0DuBRqqVks_X2WYVMbyuxqFUreOx2w3q88M-ixpwsvcjn_i2eTNQVzZBX8hw0uGUsk-Migg2N10fprGnmNsugGFcqHORJUhSL-D1T0_BP3iP1qJa-GbkLyaG0Wnwb2RtU52O6btWpkX8aZH29IFqToChFOLT/s612/gettyimages-578811112-612x612.jpg"),
            ),
            GestureDetector(
              onTap: () {},
              child: _card(context,
                  primary: Colors.white,
                  chipColor: LightColor.seeBlue,
                  backWidget: _decorationContainerA(
                    Colors.white,
                    -50,
                    30,
                  ),
                  chipText1: "Jeena",
                  chipText2: "Alzheimers",
                  imgPath:
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOnzB0TqP3GlNnhSDDXVP872TgdKKsz4OIehOUenCziQq3ixqyl6bASwIuYjZMqEeuLEataMNhVMj5pqkr0YKwP40-J6gtmRVodmJYfwg6reFb4rowlVz_ASclQuMYd-FG3Y4t5TsCwmcrl4lmdwY2Xg8KU3YFYeZ9rD1u2E5QXvq4p8ATJSxfq2Yx/s508/istockphoto-629077354-170667a.jpg"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context,
      {Color primary = Colors.redAccent,
      String? imgPath,
      String chipText1 = '',
      String chipText2 = '',
      Widget? backWidget,
      Color chipColor = LightColor.orange,
      bool isPrimaryCard = false}) {
    final width = MediaQuery.of(context).size.width;
    ;
    return Container(
        height: isPrimaryCard ? 130 : 130,
        width: isPrimaryCard ? width * .32 : width * .32,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
            color: primary.withAlpha(200),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: LightColor.lightpurple.withAlpha(20))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: Stack(
              children: <Widget>[
                backWidget!,
                Positioned(
                    top: 20,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: NetworkImage(imgPath!),
                    )),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: _cardInfo(context, chipText1, chipText2,
                      LightColor.titleTextColor, chipColor,
                      isPrimaryCard: isPrimaryCard),
                )
              ],
            ),
          ),
        ));
  }

  Widget _cardInfo(BuildContext context, String title, String courses,
      Color textColor, Color primary,
      {bool isPrimaryCard = false}) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * .32,
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: isPrimaryCard ? Colors.white : textColor,
              ),
            ),
          ),
          SizedBox(height: 5),
          _chip(courses, primary, height: 5, isPrimaryCard: isPrimaryCard)
        ],
      ),
    );
  }

  Widget _chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 12),
      ),
    );
  }

  Widget _decorationContainerA(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primary.withAlpha(255),
          ),
        ),
        _smallContainer(primary, 20, 40),
        Positioned(
          top: 20,
          right: -30,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  Widget _decorationContainerB(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          right: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blue.shade100,
            child: CircleAvatar(radius: 30, backgroundColor: primary),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.lightseeBlue, radius: 40)))
      ],
    );
  }

  Widget _decorationContainerC(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.orange.withAlpha(100),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.orange, radius: 40))),
        _smallContainer(
          LightColor.yellow,
          35,
          70,
        )
      ],
    );
  }

  Widget _decorationContainerD(Color primary, double top, double left,
      {Color? secondary, Color? secondaryAccent}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: secondary,
          ),
        ),
        _smallContainer(LightColor.yellow, 18, 35, radius: 12),
        Positioned(
          top: 130,
          left: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: primary,
            child: CircleAvatar(radius: 50, backgroundColor: secondaryAccent),
          ),
        ),
        Positioned(
          top: -30,
          right: -40,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  Widget _decorationContainerE(Color primary, double top, double left,
      {Color? secondary}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: primary.withAlpha(100),
          ),
        ),
        Positioned(
            top: 40,
            right: -25,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: primary, radius: 40))),
        Positioned(
            top: 45,
            right: -50,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: secondary, radius: 50))),
        _smallContainer(LightColor.yellow, 15, 90, radius: 5)
      ],
    );
  }

  Widget _decorationContainerF(
      Color primary, Color secondary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 25,
            right: -20,
            child: RotatedBox(
              quarterTurns: 1,
              child: ClipRect(
                  clipper: QuadClipper(),
                  child: CircleAvatar(
                      backgroundColor: primary.withAlpha(100), radius: 50)),
            )),
        Positioned(
            top: 34,
            right: -8,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: secondary.withAlpha(100), radius: 40))),
        _smallContainer(LightColor.yellow, 15, 90, radius: 5)
      ],
    );
  }

  Positioned _smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }

  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: LightColor.purple,
        unselectedItemColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          _bottomIcons(Icons.home),
          _bottomIcons(Icons.search),
          _bottomIcons(Icons.add_circle_outline),
          _bottomIcons(Icons.notifications_active),
          _bottomIcons(Icons.person),
        ],
        onTap: (index) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => RecomendedPage(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 20),
              _categoryRow("My patients", LightColor.orange, LightColor.orange),
              _featuredRowA(context),
              SizedBox(height: 0),
              _categoryRow("Recently viewed patients", LightColor.purple,
                  LightColor.darkpurple),
              _featuredRowB(context)
            ],
          ),
        ),
      ),
    );
  }
}
