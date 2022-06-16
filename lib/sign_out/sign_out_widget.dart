import '../auth/auth_util.dart';
import '../customization/customization_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home/home_widget.dart';
import '../like_posts/like_posts_widget.dart';
import '../profile/profile_widget.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignOutWidget extends StatefulWidget {
  const SignOutWidget({Key key}) : super(key: key);

  @override
  _SignOutWidgetState createState() => _SignOutWidgetState();
}

class _SignOutWidgetState extends State<SignOutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xBBFFFFFF),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Image.asset(
          'assets/images/AMITIE_header-removebg-preview.png',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: 250,
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Image.asset(
                  'assets/images/AMITIE_header-removebg-preview.png',
                  width: 100,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 160,
                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).tertiaryColor,
                      Color(0xFFFF0070)
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, 0.87),
                    end: AlignmentDirectional(-1, -0.87),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeWidget(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 40,
                        icon: FaIcon(
                          FontAwesomeIcons.home,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeWidget(),
                            ),
                          );
                        },
                        text: 'Home',
                        options: FFButtonOptions(
                          width: 70,
                          height: 40,
                          color: Color(0x00343434),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileWidget(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 0,
                        borderWidth: 0,
                        buttonSize: 40,
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileWidget(),
                              ),
                            );
                          },
                          text: 'Profile',
                          options: FFButtonOptions(
                            width: 70,
                            height: 40,
                            color: Color(0x00343434),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LikePostsWidget(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 40,
                        icon: Icon(
                          Icons.favorite_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LikePostsWidget(),
                              ),
                            );
                          },
                          text: 'Liked Posts',
                          options: FFButtonOptions(
                            width: 100,
                            height: 40,
                            color: Color(0x00343434),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomizationWidget(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 40,
                        icon: Icon(
                          Icons.edit_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomizationWidget(),
                              ),
                            );
                          },
                          text: 'Customization',
                          options: FFButtonOptions(
                            width: 120,
                            height: 40,
                            color: Color(0x00343434),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignOutWidget(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 40,
                        icon: FaIcon(
                          FontAwesomeIcons.signInAlt,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignOutWidget(),
                              ),
                            );
                          },
                          text: 'Sign Out',
                          options: FFButtonOptions(
                            width: 80,
                            height: 40,
                            color: Color(0x00343434),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://images.pexels.com/photos/9918962/pexels-photo-9918962.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                      child: Container(
                        width: 350,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Color(0xD5FFFFFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 50, 5, 0),
                              child: Text(
                                'We\'re sorry to see you go...',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Source Sans Pro',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 43,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/LOGOUT-removebg-preview.png',
                              width: MediaQuery.of(context).size.width,
                              height: 105,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Container(
                                width: 130,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFEE8B60),
                                      Color(0xFFFF0F7B)
                                    ],
                                    stops: [0, 1],
                                    begin: AlignmentDirectional(1, 0.87),
                                    end: AlignmentDirectional(-1, -0.87),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await signOut();
                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignInWidget(),
                                      ),
                                      (r) => false,
                                    );
                                  },
                                  text: 'Sign Out',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Color(0x004B39EF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
