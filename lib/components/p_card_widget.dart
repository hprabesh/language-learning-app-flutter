import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'p_card_model.dart';
export 'p_card_model.dart';

class PCardWidget extends StatefulWidget {
  const PCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    int? current,
    int? total,
  })  : this.current = current ?? 4,
        this.total = total ?? 10,
        super(key: key);

  final String? title;
  final String? subtitle;
  final int current;
  final int total;

  @override
  _PCardWidgetState createState() => _PCardWidgetState();
}

class _PCardWidgetState extends State<PCardWidget> {
  late PCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.selec = false;
      });
    });

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
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                child: Text(
                  widget.title!,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Outfit',
                        fontSize: 18.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.subtitle,
                    'subtitle',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelLargeFamily),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                child: LinearPercentIndicator(
                  percent: valueOrDefault<double>(
                    widget.current / widget.total,
                    2.0,
                  ),
                  width: MediaQuery.of(context).size.width * 0.84,
                  lineHeight: 16.0,
                  animation: true,
                  progressColor: Color(0xFF0041F4),
                  backgroundColor: Color(0xFFB6C7D4),
                  barRadius: Radius.circular(16.0),
                  padding: EdgeInsets.zero,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.current.toString(),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodySmallFamily),
                          ),
                    ),
                    Text(
                      ' of ',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodySmallFamily),
                          ),
                    ),
                    Text(
                      widget.total.toString(),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodySmallFamily),
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
