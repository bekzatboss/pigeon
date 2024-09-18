import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'senders_home_page_widget.dart' show SendersHomePageWidget;
import 'package:flutter/material.dart';

class SendersHomePageModel extends FlutterFlowModel<SendersHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SenderPack widget.
  String? senderPackValue;
  FormFieldController<String>? senderPackValueController;
  // State field(s) for SenderFrom widget.
  String? senderFromValue;
  FormFieldController<String>? senderFromValueController;
  // State field(s) for SenderTo widget.
  String? senderToValue;
  FormFieldController<String>? senderToValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
