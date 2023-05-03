import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vocabulary_option_model.dart';
export 'vocabulary_option_model.dart';

class VocabularyOptionWidget extends StatefulWidget {
  const VocabularyOptionWidget({
    Key? key,
    String? optionName,
    this.selectAnswer,
    Color? isSuccessColor,
  })  : this.optionName = optionName ?? 'optionName',
        this.isSuccessColor = isSuccessColor ?? const Color(0xFFFFFDFD),
        super(key: key);

  final String optionName;
  final Future<dynamic> Function()? selectAnswer;
  final Color isSuccessColor;

  @override
  _VocabularyOptionWidgetState createState() => _VocabularyOptionWidgetState();
}

class _VocabularyOptionWidgetState extends State<VocabularyOptionWidget> {
  late VocabularyOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VocabularyOptionModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.selectAnswer?.call();
        },
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Color(0x3416202A),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: widget.isSuccessColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Text(
                    widget.optionName,
                    style: FlutterFlowTheme.of(context).bodySmall,
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
