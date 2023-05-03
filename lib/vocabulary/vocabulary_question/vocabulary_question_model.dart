import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vocabulary/vocabulary_option/vocabulary_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VocabularyQuestionModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  int questionUserSelection = 4;

  Color successColor = const Color(0xFFAFF9B7);

  Color failedColor = const Color(0xFFF0AEAE);

  Color neutralColor = const Color(0xFFFFFDFD);

  ///  State fields for stateful widgets in this component.

  // Model for Option0.
  late VocabularyOptionModel option0Model;
  // Model for Option1.
  late VocabularyOptionModel option1Model;
  // Model for Option2.
  late VocabularyOptionModel option2Model;
  // Model for Option3.
  late VocabularyOptionModel option3Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    option0Model = createModel(context, () => VocabularyOptionModel());
    option1Model = createModel(context, () => VocabularyOptionModel());
    option2Model = createModel(context, () => VocabularyOptionModel());
    option3Model = createModel(context, () => VocabularyOptionModel());
  }

  void dispose() {
    option0Model.dispose();
    option1Model.dispose();
    option2Model.dispose();
    option3Model.dispose();
  }

  /// Additional helper methods are added here.

}
