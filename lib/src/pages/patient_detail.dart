import 'package:flutter/material.dart';
import 'package:myapptest/src/helper/quad_clipper.dart';
import 'package:myapptest/src/pages/home_page.dart';
import 'package:myapptest/src/pages/main_page.dart';

class Patientdetail_page extends StatelessWidget {
  const Patientdetail_page({Key? key}) : super(key: key);

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 200,
          width: width,
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 30,
                  right: -100,
                  child: _circularContainer(300, Colors.purple)),
              Positioned(
                  top: -100,
                  left: -45,
                  child: _circularContainer(width * .5, Colors.purple)),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: [
                                  Text(
                                    "Patient ID: 23A021\nName: Freedan\nAge: 21\nGender: Male\nDOB: 05/03/2001\nBlood group: O+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "",
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
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
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
            _card(context,
                primary: Colors.orange,
                backWidget: _decorationContainerA(Colors.orange, 50, -30),
                chipColor: Colors.orange,
                chipText1: "Indian",
                chipText2: "Nationality",
                isPrimaryCard: true,
                imgPath:
                    //nationality
                    "https://blogger.googleusercontent.com/img/a/AVvXsEhcZ7xbEPrNBGOqWaUuXKE6lTnZeOWUOVxHQvQK2nfRjoQ6GOvOO7uRxwFU_XV-DRWTKPaU4yVklU6dQIiwhqjk3_xiLjxhFPCcIbs1lgbS6N8dmn-cZ14a20F8dqSStMvHvZenMDLYY8LPN0JTj3GUPX7p_97PsI9qAIlZbZvhbpON5vaGi5daAfRG"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.purple,
                backWidget: _decorationContainerE(
                  Colors.purple,
                  90,
                  -40,
                  secondary: Colors.blue,
                ),
                chipText1: "Mole on the nose\nScar on the right wrist",
                chipText2: "Identification marks",
                imgPath:
                    //IDENTIFICATION MARKS
                    "https://blogger.googleusercontent.com/img/a/AVvXsEiUEOoyBVt-xojPquKw3-oMgctuObPSmHN242GXzs3iJVhQl2JaZLqIPGACK-EynR6z-CxBjzhv7K_iAdOWuveQwL83bNv0O3DSW0LFBX7jdYE4ezBs1ti0BjF9gQnGU0lO9GHq8HtJgzAcJrQljHnPIRzPlpoqjRkvvHW7LnfMoI1LUZe-CgogFTPC"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.orange,
                backWidget: _decorationContainerC(Colors.white, 50, -30),
                chipText1: "22.6",
                chipText2: "BMI",
                imgPath:
                    //BMI
                    "https://blogger.googleusercontent.com/img/a/AVvXsEj12_XxXw8afp901El2A7BFygGZQEhnysNkL-azL7jfPSo8ouDnMieX8M_s9pa9menL3C29ObsdvNBMsjMXoVSWGHwtS_npd7MA3oqSIQHbuH4m3RcTDXISLNebWf2QtZ80urAtpMGEF3d6UKj-m3Kl-_l66Ct5NFawGji1QtMc1pbkS1DRJL019Quj"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.blue,
                backWidget: _decorationContainerD(Colors.blue, -50, 30,
                    secondary: Colors.blue, secondaryAccent: Colors.blue),
                chipText1: "Sad most of the time",
                chipText2: "MOOD",
                imgPath:
                    //MOOD
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjC2-OUxeF39P7RRzaao24YO9CG6qIYXKQALQqp7BoZtvAwLD3CZpNCEcLYaFbTlvwK382PU3-kwXW2MEKWPHQwKYxS0iyGoaReB_Mxf6U6FASutSUIN8d_Rf9BBCAIg-aYJYl-R2Lobeerm2eJsF2GCJTr7RVDPcLuyhHWYwDspQCi65cJ9qp7WGji/s320/gettyimages-1213291408-612x612.jpg"),
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
            _card(context,
                primary: Colors.orange,
                backWidget: _decorationContainerA(Colors.orange, 50, -30),
                chipColor: Colors.orange,
                chipText1: "Visual-Spatial Intelligence: 45%",
                chipText2: "Average",
                isPrimaryCard: true,
                imgPath:
                    //VISUAL AND SPATIAL INTELLIGENCE
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi30gtyEowunFNv4LkNgMUTnQuqwBEWIuoZJaK7LFlGuu-UwVdPH1ja-WT5szXsMzYVvJtpTKOQBcPuftVU4xzpAThJRhye1rRFlHWoT3ywrkMxnRiiZQBbmtgg3rH1SWgAU3zkHmaBRiDup9aKKOkjx1BbmpMXZklSOX2N4HufjJBa83XGvNYbI6kX/s612/gettyimages-1335872429-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.purple,
                backWidget: _decorationContainerE(
                  Colors.purple,
                  90,
                  -40,
                  secondary: Colors.blue,
                ),
                chipText1: "Working Memory: 48%",
                chipText2: "Average",
                imgPath:
                    //WORKING MEMORY
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpMr-DUCpcdCJbKogu-Wi4xSnE3RB_osXxO3Dx_mP_OMsBZBhe50LRVOrw6bgR5PT677Dfree4aWz2XZka3wOJgZMZlJAdsSQzUsR0TWKiUPPUL7zXR45pV1-bS9oegQBAjzcavI2T0T6Fks-vAnbuSc5uhNm1K4vrEK66HqSx7uxF-4x8fLZShOcN/s612/gettyimages-1213508559-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.orange,
                backWidget: _decorationContainerC(Colors.white, 50, -30),
                chipText1: "Quantitative Reasoning: 57%",
                chipText2: "Above average",
                imgPath:
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEheLa9KGv6FI2kSc4QEqjyONsuRKW32HBdX3vUoK5_KTI6EpsNQDG-gx958-0d8OuIEI79wBCOSjyaLOvnGLDOLK0y25s83o20S--4alG2UvgOU4b52uHmdBxWtmVO7OuZzfUEJLJp4uQAIX23Z6MS6Roj7JRigUkD15JJDEDVLHpa890tKBk_5mEt_/s612/gettyimages-1141737652-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.blue,
                backWidget: _decorationContainerD(Colors.blue, -50, 30,
                    secondary: Colors.blue, secondaryAccent: Colors.blue),
                chipText1: "Fluid Reasoning: 32%",
                chipText2: "Below average",
                imgPath:
                    //FLUID REASONING
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjC2-OUxeF39P7RRzaao24YO9CG6qIYXKQALQqp7BoZtvAwLD3CZpNCEcLYaFbTlvwK382PU3-kwXW2MEKWPHQwKYxS0iyGoaReB_Mxf6U6FASutSUIN8d_Rf9BBCAIg-aYJYl-R2Lobeerm2eJsF2GCJTr7RVDPcLuyhHWYwDspQCi65cJ9qp7WGji/s320/gettyimages-1213291408-612x612.jpg"),
          ],
        ),
      ),
    );
  }

  Widget _featuredRowC(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _card(context,
                primary: Colors.orange,
                backWidget: _decorationContainerA(Colors.orange, 50, -30),
                chipColor: Colors.orange,
                chipText1: "Anxiety: 79%",
                chipText2: "High",
                isPrimaryCard: true,
                imgPath:
                    //ANXIETY
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi30gtyEowunFNv4LkNgMUTnQuqwBEWIuoZJaK7LFlGuu-UwVdPH1ja-WT5szXsMzYVvJtpTKOQBcPuftVU4xzpAThJRhye1rRFlHWoT3ywrkMxnRiiZQBbmtgg3rH1SWgAU3zkHmaBRiDup9aKKOkjx1BbmpMXZklSOX2N4HufjJBa83XGvNYbI6kX/s612/gettyimages-1335872429-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.purple,
                backWidget: _decorationContainerE(
                  Colors.purple,
                  90,
                  -40,
                  secondary: Colors.blue,
                ),
                chipText1: "Emotional Outbursts: 82%",
                chipText2: "High",
                imgPath:
                    //EMOTIONAL OUTBURST
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpMr-DUCpcdCJbKogu-Wi4xSnE3RB_osXxO3Dx_mP_OMsBZBhe50LRVOrw6bgR5PT677Dfree4aWz2XZka3wOJgZMZlJAdsSQzUsR0TWKiUPPUL7zXR45pV1-bS9oegQBAjzcavI2T0T6Fks-vAnbuSc5uhNm1K4vrEK66HqSx7uxF-4x8fLZShOcN/s612/gettyimages-1213508559-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.orange,
                backWidget: _decorationContainerC(Colors.white, 50, -30),
                chipText1: "Memory Problems: 43%",
                chipText2: "Average",
                imgPath:
                    //MEMORY PROBLEMS
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEheLa9KGv6FI2kSc4QEqjyONsuRKW32HBdX3vUoK5_KTI6EpsNQDG-gx958-0d8OuIEI79wBCOSjyaLOvnGLDOLK0y25s83o20S--4alG2UvgOU4b52uHmdBxWtmVO7OuZzfUEJLJp4uQAIX23Z6MS6Roj7JRigUkD15JJDEDVLHpa890tKBk_5mEt_/s612/gettyimages-1141737652-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.blue,
                backWidget: _decorationContainerD(Colors.blue, -50, 30,
                    secondary: Colors.blue, secondaryAccent: Colors.blue),
                chipText1: "Frustration: 67%",
                chipText2: "Above average",
                imgPath:
                    //FRUSTRATION
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjC2-OUxeF39P7RRzaao24YO9CG6qIYXKQALQqp7BoZtvAwLD3CZpNCEcLYaFbTlvwK382PU3-kwXW2MEKWPHQwKYxS0iyGoaReB_Mxf6U6FASutSUIN8d_Rf9BBCAIg-aYJYl-R2Lobeerm2eJsF2GCJTr7RVDPcLuyhHWYwDspQCi65cJ9qp7WGji/s320/gettyimages-1213291408-612x612.jpg"),
          ],
        ),
      ),
    );
  }

  Widget _featuredRowD(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _card(context,
                primary: Colors.blue,
                chipColor: Colors.blue,
                backWidget: _decorationContainerD(Colors.blue, -100, -65,
                    secondary: Colors.blue, secondaryAccent: Colors.blue),
                chipText1:
                    "Citalopram\nDosage : 10mg\nQuantity : 1 per day\nTimings : Morning ",
                chipText2: "Success Rate : 85%",
                isPrimaryCard: true,
                imgPath:
                    //MEDICATION
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh9uBjvfOd6OlaYV-8_QiiR8ZEaafCx2P8UakQpA2rcykCr7GI_ZauYRjN7CGpFujdlox0jIwafG1GAr2ufY2Pk2wUX_H6-breQTZ12HKQlqcd5iQhoKV2K7MFVzU1fjRrZQvHWBhRyZPDnke2bRp6dNuhUb4o9TIUwySQGLU_JP4GVjI9iq-cFnSlQ/s612/gettyimages-1159948727-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.purple,
                backWidget: _decorationContainerE(
                  Colors.purple,
                  90,
                  -40,
                  secondary: Colors.blue,
                ),
                chipText1:
                    "Fluoxetine\nDosage : 10mg\nQuantity : 1 per day\nTimings : Morning",
                chipText2: "Success Rate : 76%",
                imgPath:
                    //MEDICATION
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEheLa9KGv6FI2kSc4QEqjyONsuRKW32HBdX3vUoK5_KTI6EpsNQDG-gx958-0d8OuIEI79wBCOSjyaLOvnGLDOLK0y25s83o20S--4alG2UvgOU4b52uHmdBxWtmVO7OuZzfUEJLJp4uQAIX23Z6MS6Roj7JRigUkD15JJDEDVLHpa890tKBk_5mEt_/s612/gettyimages-1141737652-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.orange,
                backWidget: _decorationContainerF(
                    Colors.orange, Colors.orange, 50, -30),
                chipText1:
                    "Lexapro\nDosage : 10mg\nQuantity : 1 per day\nTimings : Morning",
                chipText2: "Success Rate : 79%",
                imgPath:
                    //MEDICATION
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEizXQB_TJVeqtZ_q1qnpc8deNVcYNuy0DuBRqqVks_X2WYVMbyuxqFUreOx2w3q88M-ixpwsvcjn_i2eTNQVzZBX8hw0uGUsk-Migg2N10fprGnmNsugGFcqHORJUhSL-D1T0_BP3iP1qJa-GbkLyaG0Wnwb2RtU52O6btWpkX8aZH29IFqToChFOLT/s612/gettyimages-578811112-612x612.jpg"),
            _card(context,
                primary: Colors.white,
                chipColor: Colors.blue,
                backWidget: _decorationContainerA(
                  Colors.white,
                  -50,
                  30,
                ),
                chipText1:
                    "Sertraline\nDosage : 25mg\nQuantity : 1 per day\nTimings : Morning",
                chipText2: "Success Rate : 80%",
                imgPath:
                    //MEDICATION
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOnzB0TqP3GlNnhSDDXVP872TgdKKsz4OIehOUenCziQq3ixqyl6bASwIuYjZMqEeuLEataMNhVMj5pqkr0YKwP40-J6gtmRVodmJYfwg6reFb4rowlVz_ASclQuMYd-FG3Y4t5TsCwmcrl4lmdwY2Xg8KU3YFYeZ9rD1u2E5QXvq4p8ATJSxfq2Yx/s508/istockphoto-629077354-170667a.jpg"),
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
      Color chipColor = Colors.orange,
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
                  color: Colors.purple.withAlpha(20))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: Stack(
              children: <Widget>[
                backWidget!,
                Positioned(
                    top: 10,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: NetworkImage(imgPath!),
                    )),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: _cardInfo(
                      context, chipText1, chipText2, Colors.brown, chipColor,
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
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
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
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 9),
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
                child: CircleAvatar(backgroundColor: Colors.blue, radius: 40)))
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
            backgroundColor: Colors.orange.withAlpha(100),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child:
                    CircleAvatar(backgroundColor: Colors.orange, radius: 40))),
        _smallContainer(
          Colors.yellow,
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
        _smallContainer(Colors.yellow, 18, 35, radius: 12),
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
        _smallContainer(Colors.yellow, 15, 90, radius: 5)
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
        _smallContainer(Colors.yellow, 15, 90, radius: 5)
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
        selectedItemColor: Colors.purple,
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
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 20),
              _categoryRow("Appearance", Colors.orange, Colors.orange),
              _featuredRowA(context),
              SizedBox(height: 20),
              _categoryRow(
                  "General Intelligence", Colors.orange, Colors.orange),
              _featuredRowB(context),
              SizedBox(height: 20),
              _categoryRow("Symptoms", Colors.orange, Colors.orange),
              _featuredRowC(context),
              SizedBox(height: 0),
              _categoryRow("Medical details", Colors.purple, Colors.purple),
              _featuredRowD(context)
            ],
          ),
        ),
      ),
    );
  }
}
