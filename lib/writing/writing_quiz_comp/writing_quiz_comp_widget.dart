import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'writing_quiz_comp_model.dart';
export 'writing_quiz_comp_model.dart';

class WritingQuizCompWidget extends StatefulWidget {
  const WritingQuizCompWidget({
    Key? key,
    String? firstText,
    String? secondText,
    int? questionNum,
  })  : this.firstText = firstText ?? 'First Text Here',
        this.secondText = secondText ?? 'Second Text Here',
        this.questionNum = questionNum ?? 1,
        super(key: key);

  final String firstText;
  final String secondText;
  final int questionNum;

  @override
  _WritingQuizCompWidgetState createState() => _WritingQuizCompWidgetState();
}

class _WritingQuizCompWidgetState extends State<WritingQuizCompWidget> {
  late WritingQuizCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WritingQuizCompModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).primaryBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Question ',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            fontSize: 18.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.questionNum.toString(),
                        '1',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            fontSize: 18.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.firstText,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 5.0, 0.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFE7EDFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: TextFormField(
                                controller: _model.textController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    FFAppState().update(() {
                                      FFAppState().fills =
                                          FFAppState().fills + 1;
                                    });
                                  },
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: '[enter your answer here]',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
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
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.secondText,
                      style: FlutterFlowTheme.of(context).bodyMedium,
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
