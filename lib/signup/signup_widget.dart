import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home/home_widget.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController confirmPasswordTextController;
  bool passwordVisibility2;
  TextEditingController emailTextController;
  TextEditingController textController1;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    emailTextController = TextEditingController();
    textController1 = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              'https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Container(
                width: 350,
                height: 700,
                decoration: BoxDecoration(
                  color: Color(0xD5FFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.asset(
                          'assets/images/AmitieWelcome-removebg-preview.png',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(88, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 5),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: SignInWidget(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign In',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(50, 0, 75, 2),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Sign Up',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Source Sans Pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Container(
                                  width: 75,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        Color(0xFFFF0070)
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(1, 0),
                                      end: AlignmentDirectional(-1, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x83000000),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: emailTextController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'emailTextController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'johndoe@gmail.com',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Color(0xBBFFFFFF),
                                    fontWeight: FontWeight.normal,
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
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.normal,
                                    ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x83000000),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: textController1,
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController1',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'john_is_a_doe',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Color(0xBBFFFFFF),
                                    fontWeight: FontWeight.normal,
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
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.normal,
                                    ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x83000000),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: passwordTextController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'passwordTextController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: !passwordVisibility1,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
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
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility1 =
                                      !passwordVisibility1,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility1
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 22,
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x83000000),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: confirmPasswordTextController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'confirmPasswordTextController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: !passwordVisibility2,
                            decoration: InputDecoration(
                              labelText: ' Confirm Password',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
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
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility2 =
                                      !passwordVisibility2,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility2
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 22,
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(120, 15, 0, 0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFEE8B60), Color(0xFFFF0F7B)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(1, 0.87),
                              end: AlignmentDirectional(-1, -0.87),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (passwordTextController?.text !=
                                  confirmPasswordTextController?.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Passwords don\'t match!',
                                    ),
                                  ),
                                );
                                return;
                              }

                              final user = await createAccountWithEmail(
                                context,
                                emailTextController.text,
                                passwordTextController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              final usersCreateData = createUsersRecordData(
                                displayName: textController1.text,
                              );
                              await UsersRecord.collection
                                  .doc(user.uid)
                                  .update(usersCreateData);

                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Sign Up',
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Container(
                                width: 130,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Color(0xFFFF0070),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                'OR',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                              child: Container(
                                width: 130,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0x00EEEEEE),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Color(0xFFEE8B60),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(55, 30, 0, 0),
                        child: Container(
                          width: 250,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFF0070), Color(0xFFEE8B60)],
                              stops: [0, 1],
                              begin: AlignmentDirectional(1, 0.87),
                              end: AlignmentDirectional(-1, -0.87),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: InkWell(
                            onTap: () async {
                              final user = await signInWithGoogle(context);
                              if (user == null) {
                                return;
                              }
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Image.asset(
                                    'assets/images/Googleicon.png',
                                    width: 50,
                                    height: 35,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    final user =
                                        await signInWithGoogle(context);
                                    if (user == null) {
                                      return;
                                    }
                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeWidget(),
                                      ),
                                      (r) => false,
                                    );
                                  },
                                  text: 'Sign up with Google',
                                  options: FFButtonOptions(
                                    width: 170,
                                    height: 40,
                                    color: Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.white,
                                          fontSize: 18,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
