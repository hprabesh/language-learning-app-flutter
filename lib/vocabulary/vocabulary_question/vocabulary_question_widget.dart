import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vocabulary/vocabulary_option/vocabulary_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vocabulary_question_model.dart';
export 'vocabulary_question_model.dart';

class VocabularyQuestionWidget extends StatefulWidget {
  const VocabularyQuestionWidget({
    Key? key,
    this.questionId,
    this.questionName,
    this.questionNumber,
    this.questionDifficultyLevel,
    this.isQuestionAnswered,
    this.questionEarningPoint,
    this.questionHint,
    this.questionOptions,
    this.questionRetryCount,
    this.questionCorrectOption,
  }) : super(key: key);

  final String? questionId;
  final String? questionName;
  final int? questionNumber;
  final int? questionDifficultyLevel;
  final bool? isQuestionAnswered;
  final int? questionEarningPoint;
  final String? questionHint;
  final List<String>? questionOptions;
  final int? questionRetryCount;
  final int? questionCorrectOption;

  @override
  _VocabularyQuestionWidgetState createState() =>
      _VocabularyQuestionWidgetState();
}

class _VocabularyQuestionWidgetState extends State<VocabularyQuestionWidget> {
  late VocabularyQuestionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VocabularyQuestionModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 20.0),
            child: Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  width: 2.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(-0.05, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.questionNumber?.toString(),
                              '0',
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              widget.questionName!,
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                          ),
                        ],
                      ),
                      if (widget.questionRetryCount! >= 2)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Hint'),
                                  content: Text(widget.questionHint!),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Icon(
                            Icons.not_listed_location_outlined,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 24.0,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
              child: wrapWithModel(
                model: _model.option0Model,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: VocabularyOptionWidget(
                  optionName: widget.questionOptions?[0],
                  isSuccessColor: (int questionUserSelection,
                          int questionCorrectOption,
                          Color isSuccessColor,
                          Color isFailedColor,
                          Color isNeutralColor) {
                    return (questionUserSelection == questionCorrectOption)
                        ? isSuccessColor
                        : ((questionUserSelection < 4)
                            ? isFailedColor
                            : isNeutralColor);
                  }(
                      _model.questionUserSelection,
                      widget.questionCorrectOption!,
                      _model.successColor,
                      _model.failedColor,
                      _model.neutralColor),
                  selectAnswer: () async {
                    setState(() {
                      _model.questionUserSelection = 0;
                    });
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
              child: wrapWithModel(
                model: _model.option1Model,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: VocabularyOptionWidget(
                  optionName: widget.questionOptions?[1],
                  isSuccessColor: (int questionUserSelection,
                          int questionCorrectOption,
                          Color isSuccessColor,
                          Color isFailedColor,
                          Color isNeutralColor) {
                    return (questionUserSelection == questionCorrectOption)
                        ? isSuccessColor
                        : ((questionUserSelection < 4)
                            ? isFailedColor
                            : isNeutralColor);
                  }(
                      _model.questionUserSelection,
                      widget.questionCorrectOption!,
                      _model.successColor,
                      _model.failedColor,
                      _model.neutralColor),
                  selectAnswer: () async {
                    setState(() {
                      _model.questionUserSelection = 0;
                    });
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
              child: wrapWithModel(
                model: _model.option2Model,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: VocabularyOptionWidget(
                  optionName: widget.questionOptions?[2],
                  isSuccessColor: (int questionUserSelection,
                          int questionCorrectOption,
                          Color isSuccessColor,
                          Color isFailedColor,
                          Color isNeutralColor) {
                    return (questionUserSelection == questionCorrectOption)
                        ? isSuccessColor
                        : ((questionUserSelection < 4)
                            ? isFailedColor
                            : isNeutralColor);
                  }(
                      _model.questionUserSelection,
                      widget.questionCorrectOption!,
                      _model.successColor,
                      _model.failedColor,
                      _model.neutralColor),
                  selectAnswer: () async {
                    setState(() {
                      _model.questionUserSelection = 0;
                    });
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
              child: wrapWithModel(
                model: _model.option3Model,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: VocabularyOptionWidget(
                  optionName: widget.questionOptions?[3],
                  isSuccessColor: (int questionUserSelection,
                          int questionCorrectOption,
                          Color isSuccessColor,
                          Color isFailedColor,
                          Color isNeutralColor) {
                    return (questionUserSelection == questionCorrectOption)
                        ? isSuccessColor
                        : ((questionUserSelection < 4)
                            ? isFailedColor
                            : isNeutralColor);
                  }(
                      _model.questionUserSelection,
                      widget.questionCorrectOption!,
                      _model.successColor,
                      _model.failedColor,
                      _model.neutralColor),
                  selectAnswer: () async {
                    setState(() {
                      _model.questionUserSelection = 0;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
