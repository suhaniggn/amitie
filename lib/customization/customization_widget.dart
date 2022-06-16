import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../home/home_widget.dart';
import '../like_posts/like_posts_widget.dart';
import '../profile/profile_widget.dart';
import '../sign_out/sign_out_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizationWidget extends StatefulWidget {
  const CustomizationWidget({Key key}) : super(key: key);

  @override
  _CustomizationWidgetState createState() => _CustomizationWidgetState();
}

class _CustomizationWidgetState extends State<CustomizationWidget> {
  String uploadedFileUrl = '';
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
                  'https://images.pexels.com/photos/12125347/pexels-photo-12125347.jpeg',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      singleRecord: true,
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
                      List<UsersRecord> containerUsersRecordList =
                          snapshot.data;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data.isEmpty) {
                        return Container();
                      }
                      final containerUsersRecord =
                          containerUsersRecordList.isNotEmpty
                              ? containerUsersRecordList.first
                              : null;
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      textColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      pickerFontFamily: 'Source Sans Pro',
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      final downloadUrls = (await Future.wait(
                                              selectedMedia.map((m) async =>
                                                  await uploadData(
                                                      m.storagePath, m.bytes))))
                                          .where((u) => u != null)
                                          .toList();
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      if (downloadUrls != null &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() => uploadedFileUrl =
                                            downloadUrls.first);
                                        showUploadMessage(
                                          context,
                                          'Success!',
                                        );
                                      } else {
                                        showUploadMessage(
                                          context,
                                          'Failed to upload media',
                                        );
                                        return;
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'data:image/png;base64,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',
                                        ).image,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        uploadedFileUrl,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 3, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 0, 0),
                                        child: Text(
                                          'Change your \nProfile Picture',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Source Sans Pro',
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          'Click on the icon to upload media',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Source Sans Pro',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w100,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final usersUpdateData = createUsersRecordData(
                                    profilePic: uploadedFileUrl,
                                  );
                                  await currentUserReference
                                      .update(usersUpdateData);
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileWidget(),
                                    ),
                                  );
                                },
                                text: 'Change',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0xBDFF0B60),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Source Sans Pro',
                                        color: Colors.white,
                                      ),
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
