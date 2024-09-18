import '/flutter_flow/flutter_flow_util.dart';
import 'start_page_widget.dart' show StartPageWidget;
import 'package:flutter/material.dart';

class StartPageModel extends FlutterFlowModel<StartPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for pass1 widget.
  FocusNode? pass1FocusNode;
  TextEditingController? pass1TextController;
  String? Function(BuildContext, String?)? pass1TextControllerValidator;
  // State field(s) for pass2 widget.
  FocusNode? pass2FocusNode;
  TextEditingController? pass2TextController;
  String? Function(BuildContext, String?)? pass2TextControllerValidator;
  // State field(s) for phoneNumberReg widget.
  FocusNode? phoneNumberRegFocusNode;
  TextEditingController? phoneNumberRegTextController;
  String? Function(BuildContext, String?)?
      phoneNumberRegTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();

    pass2FocusNode?.dispose();
    pass2TextController?.dispose();

    phoneNumberRegFocusNode?.dispose();
    phoneNumberRegTextController?.dispose();
  }
}
