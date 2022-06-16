import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../home/home_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PostpageWidget extends StatefulWidget {
  const PostpageWidget({Key key}) : super(key: key);

  @override
  _PostpageWidgetState createState() => _PostpageWidgetState();
}

class _PostpageWidgetState extends State<PostpageWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 40,
                              fillColor: Color(0x00EEEEEE),
                              icon: Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.topToBottom,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: HomeWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(250, 3, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final postsCreateData = createPostsRecordData(
                                  body: textController.text,
                                  timeStamp: getCurrentTimestamp,
                                  uid: currentUserReference,
                                  photo: uploadedFileUrl,
                                  video: uploadedFileUrl,
                                  pid: functions.generatePid(),
                                );
                                await PostsRecord.collection
                                    .doc()
                                    .set(postsCreateData);
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.topToBottom,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: HomeWidget(),
                                  ),
                                );
                                if (formKey.currentState == null ||
                                    !formKey.currentState.validate()) {
                                  return;
                                }
                              },
                              text: 'Post',
                              options: FFButtonOptions(
                                width: 80,
                                height: 50,
                                color: Color(0x00EEEEEE),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Color(0xFFD81B60),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
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
                      Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xC29A9A9A),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 175, 0),
                        child: Text(
                          'Enter text for your post',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          onFieldSubmitted: (_) async {
                            if (formKey.currentState == null ||
                                !formKey.currentState.validate()) {
                              return;
                            }
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Let your thoughts flow...',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Color(0xC2343434),
                                      fontWeight: FontWeight.w300,
                                    ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                          maxLines: 10,
                          keyboardType: TextInputType.multiline,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Field is required';
                            }
                            if (val.length < 1) {
                              return 'Requires at least 1 characters.';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: 250,
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 172, 0),
                        child: Text(
                          'Attach an Image / Video',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 225, 0),
                        child: Text(
                          '(One per post allowed)',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: 300,
                          height: 165,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/Upload.png',
                              ).image,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: FlutterFlowMediaDisplay(
                              path: uploadedFileUrl,
                              imageBuilder: (path) => Image.network(
                                path,
                                width: 400,
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
                                allowPlaybackSpeedMenu: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(300, 20, 0, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFF0070),
                                FlutterFlowTheme.of(context).tertiaryColor
                              ],
                              stops: [0, 1],
                              begin: AlignmentDirectional(0, -1),
                              end: AlignmentDirectional(0, 1),
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.upload_rounded,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  maxWidth: 200.00,
                                  maxHeight: 200.00,
                                  allowPhoto: true,
                                  allowVideo: true,
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
                                    setState(() =>
                                        uploadedFileUrl = downloadUrls.first);
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
                            ),
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
    );
  }
}
