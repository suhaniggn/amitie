import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../customization/customization_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home/home_widget.dart';
import '../postpage/postpage_widget.dart';
import '../profile/profile_widget.dart';
import '../sign_out/sign_out_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LikePostsWidget extends StatefulWidget {
  const LikePostsWidget({Key key}) : super(key: key);

  @override
  _LikePostsWidgetState createState() => _LikePostsWidgetState();
}

class _LikePostsWidgetState extends State<LikePostsWidget> {
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  'https://images.pexels.com/photos/4040585/pexels-photo-4040585.jpeg',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: StreamBuilder<List<PostsRecord>>(
                      stream: queryPostsRecord(
                        queryBuilder: (postsRecord) => postsRecord
                            .where('users_liked', arrayContains: currentUserUid)
                            .orderBy('time_stamp', descending: true),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: SpinKitThreeBounce(
                                color: Color(0xFFFF0070),
                                size: 40,
                              ),
                            ),
                          );
                        }
                        List<PostsRecord> listViewPostsRecordList =
                            snapshot.data;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewPostsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewPostsRecord =
                                listViewPostsRecordList[listViewIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: StreamBuilder<UsersRecord>(
                                stream: UsersRecord.getDocument(
                                    listViewPostsRecord.uid),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: SpinKitThreeBounce(
                                          color: Color(0xFFFF0070),
                                          size: 40,
                                        ),
                                      ),
                                    );
                                  }
                                  final containerUsersRecord = snapshot.data;
                                  return Material(
                                    color: Colors.transparent,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 370,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 3, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Container(
                                                    width: 50,
                                                    height: 50,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      containerUsersRecord
                                                          .profilePic,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Container(
                                                  width: 175,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x009A9A9A),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 3, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            containerUsersRecord
                                                                .displayName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Source Sans Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                                'd/M h:mm a',
                                                                listViewPostsRecord
                                                                    .timeStamp),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Source Sans Pro',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                80, 0, 0, 0),
                                                    child: ToggleIcon(
                                                      onPressed: () async {
                                                        final usersLikedElement =
                                                            currentUserUid;
                                                        final usersLikedUpdate =
                                                            listViewPostsRecord
                                                                    .usersLiked
                                                                    .toList()
                                                                    .contains(
                                                                        usersLikedElement)
                                                                ? FieldValue
                                                                    .arrayRemove([
                                                                    usersLikedElement
                                                                  ])
                                                                : FieldValue
                                                                    .arrayUnion([
                                                                    usersLikedElement
                                                                  ]);
                                                        final postsUpdateData =
                                                            {
                                                          'users_liked':
                                                              usersLikedUpdate,
                                                        };
                                                        await listViewPostsRecord
                                                            .reference
                                                            .update(
                                                                postsUpdateData);
                                                      },
                                                      value: listViewPostsRecord
                                                          .usersLiked
                                                          .toList()
                                                          .contains(
                                                              currentUserUid),
                                                      onIcon: Icon(
                                                        Icons.favorite_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        size: 30,
                                                      ),
                                                      offIcon: Icon(
                                                        Icons.favorite_border,
                                                        color: Colors.black,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 20, 0, 0),
                                            child: Text(
                                              listViewPostsRecord.body,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Source Sans Pro',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                FlutterFlowMediaDisplay(
                                                  path:
                                                      listViewPostsRecord.video,
                                                  imageBuilder: (path) =>
                                                      Image.network(
                                                    path,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.65,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  videoPlayerBuilder: (path) =>
                                                      FlutterFlowVideoPlayer(
                                                    path: path,
                                                    width: 300,
                                                    autoPlay: false,
                                                    looping: true,
                                                    showControls: true,
                                                    allowFullScreen: true,
                                                    allowPlaybackSpeedMenu:
                                                        true,
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
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(300, 0, 0, 5),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    fillColor: Color(0xFFEEEEEE),
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: PostpageWidget(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
