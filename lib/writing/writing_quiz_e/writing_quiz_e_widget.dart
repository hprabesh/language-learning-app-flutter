import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/writing/writing_quiz_comp/writing_quiz_comp_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'writing_quiz_e_model.dart';
export 'writing_quiz_e_model.dart';

class WritingQuizEWidget extends StatefulWidget {
  const WritingQuizEWidget({
    Key? key,
    String? difficulty,
  })  : this.difficulty = difficulty ?? 'Beginner',
        super(key: key);

  final String difficulty;

  @override
  _WritingQuizEWidgetState createState() => _WritingQuizEWidgetState();
}

class _WritingQuizEWidgetState extends State<WritingQuizEWidget> {
  late WritingQuizEModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WritingQuizEModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().fills = 0;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120.0,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/writing.png',
                            width: double.infinity,
                            height: 120.0,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 2.0,
                                  sigmaY: 1.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x48000000),
                                  ),
                                  alignment: AlignmentDirectional(
                                      0.0, 0.050000000000000044),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 20.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 24.0,
                                                  icon: Icon(
                                                    Icons.arrow_back_rounded,
                                                    color: Colors.white,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.pop();
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          35.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Writing Quiz',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          color: Colors.white,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmallFamily),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Complete the ',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          Text(
                            widget.difficulty,
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          Text(
                            ' level quiz',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          wrapWithModel(
                            model: _model.firstModel,
                            updateCallback: () => setState(() {}),
                            child: WritingQuizCompWidget(
                              firstText: 'Sarah\'s favorite fruit is ',
                              secondText:
                                  'and she eats one every morning for breakfast.',
                              questionNum: 1,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.secondModel,
                            updateCallback: () => setState(() {}),
                            child: WritingQuizCompWidget(
                              firstText: 'I can\'t find my ',
                              secondText:
                                  ', it\'s blue colored. Have you seen it?',
                              questionNum: 2,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.thirdModel,
                            updateCallback: () => setState(() {}),
                            child: WritingQuizCompWidget(
                              firstText: 'I put on my',
                              secondText: 'to keep warm when I went outside.',
                              questionNum: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Home');
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Color(0x411D2429),
                      offset: Offset(0.0, -2.0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 44.0),
                  child: Text(
                    'Submit Answers',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
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
