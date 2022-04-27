import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailFieldController;
  TextEditingController passFieldController;
  bool passFieldVisibility;
  TextEditingController txtEmailController;
  TextEditingController txtPasswordController;
  bool txtPasswordVisibility;
  TextEditingController txtRePasswordController;
  bool txtRePasswordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailFieldController = TextEditingController();
    passFieldController = TextEditingController();
    passFieldVisibility = false;
    txtEmailController = TextEditingController();
    txtPasswordController = TextEditingController();
    txtPasswordVisibility = false;
    txtRePasswordController = TextEditingController();
    txtRePasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Stack(
                      alignment:
                          AlignmentDirectional(-0.050000000000000044, 0.25),
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-5.03, 1.61),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  isScrollable: true,
                                  labelColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  indicatorColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  tabs: [
                                    Tab(
                                      text: 'SignIn',
                                    ),
                                    Tab(
                                      text: 'Register',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1,
                                        child: Stack(
                                          alignment: AlignmentDirectional(
                                              -0.050000000000000044, 0),
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.35, -1),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    TextFormField(
                                                      controller:
                                                          emailFieldController,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        'emailFieldController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () => setState(() {}),
                                                      ),
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Email',
                                                        labelStyle: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16,
                                                        ),
                                                        hintText: 'Email',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        prefixIcon: Icon(
                                                          Icons.mail,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                        suffixIcon: Icon(
                                                          Icons.alternate_email,
                                                          color:
                                                              Color(0xFF757575),
                                                          size: 22,
                                                        ),
                                                      ),
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Container(
                                                        width: 100,
                                                        height: 10,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                                      ),
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          passFieldController,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        'passFieldController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () => setState(() {}),
                                                      ),
                                                      autofocus: true,
                                                      obscureText:
                                                          !passFieldVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Contraseña',
                                                        labelStyle: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16,
                                                        ),
                                                        hintText: 'Contraseña',
                                                        hintStyle: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16,
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        prefixIcon: Icon(
                                                          Icons
                                                              .security_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => passFieldVisibility =
                                                                !passFieldVisibility,
                                                          ),
                                                          child: Icon(
                                                            passFieldVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: Color(
                                                                0xFF757575),
                                                            size: 22,
                                                          ),
                                                        ),
                                                      ),
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 10, 0, 0),
                                                      child: Container(
                                                        width: 100,
                                                        height: 10,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        // GotoHomePage

                                                        final user =
                                                            await signInWithEmail(
                                                          context,
                                                          emailFieldController
                                                              .text,
                                                          passFieldController
                                                              .text,
                                                        );
                                                        if (user == null) {
                                                          return;
                                                        }

                                                        await Navigator
                                                            .pushAndRemoveUntil(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                HomePageWidget(),
                                                          ),
                                                          (r) => false,
                                                        );
                                                      },
                                                      text: 'Login',
                                                      icon: Icon(
                                                        Icons.login,
                                                        size: 15,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 400,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        elevation: 10,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      'or',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Google',
                                                      icon: FaIcon(
                                                        FontAwesomeIcons.google,
                                                        color:
                                                            Color(0xFFE8EEF5),
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 400,
                                                        height: 40,
                                                        color:
                                                            Color(0xFF3771C0),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius: 12,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 20, 0, 0),
                                                      child: Image.asset(
                                                        'assets/images/logo.jpeg',
                                                        width: 100,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.35, -1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 50, 10, 10),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                TextFormField(
                                                  controller:
                                                      txtEmailController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'Email',
                                                    labelStyle: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    hintText:
                                                        'Ingresa un correo nuevo',
                                                    hintStyle: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    prefixIcon: Icon(
                                                      Icons.email_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                    suffixIcon: Icon(
                                                      Icons.alternate_email,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width: 100,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFEFFFFFF),
                                                    ),
                                                  ),
                                                ),
                                                TextFormField(
                                                  controller:
                                                      txtPasswordController,
                                                  obscureText:
                                                      !txtPasswordVisibility,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'Password',
                                                    labelStyle: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    hintText:
                                                        'Ingresa un Password',
                                                    hintStyle: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    prefixIcon: Icon(
                                                      Icons.security,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                        () => txtPasswordVisibility =
                                                            !txtPasswordVisibility,
                                                      ),
                                                      child: Icon(
                                                        txtPasswordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width: 100,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                TextFormField(
                                                  controller:
                                                      txtRePasswordController,
                                                  obscureText:
                                                      !txtRePasswordVisibility,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText:
                                                        'Retype Password',
                                                    labelStyle: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    hintText:
                                                        'Ingresa nuevamente el password',
                                                    hintStyle: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    prefixIcon: Icon(
                                                      Icons.security,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                        () => txtRePasswordVisibility =
                                                            !txtRePasswordVisibility,
                                                      ),
                                                      child: Icon(
                                                        txtRePasswordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width: 100,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 1, 0, 1),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      if (txtPasswordController
                                                              .text !=
                                                          txtRePasswordController
                                                              .text) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Passwords don\'t match!',
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }

                                                      final user =
                                                          await createAccountWithEmail(
                                                        context,
                                                        txtEmailController.text,
                                                        txtPasswordController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await Navigator
                                                          .pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePageWidget(),
                                                        ),
                                                        (r) => false,
                                                      );
                                                    },
                                                    text: 'Register',
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 15,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 60,
                                                      height: 40,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 10,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
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
                                      ),
                                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
