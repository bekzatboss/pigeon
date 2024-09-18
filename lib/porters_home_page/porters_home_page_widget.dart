import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/auth_dialog_porter_widget.dart';
import '/components/tutorial_porter_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'porters_home_page_model.dart';
export 'porters_home_page_model.dart';

class PortersHomePageWidget extends StatefulWidget {
  const PortersHomePageWidget({super.key});

  @override
  State<PortersHomePageWidget> createState() => _PortersHomePageWidgetState();
}

class _PortersHomePageWidgetState extends State<PortersHomePageWidget> {
  late PortersHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PortersHomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRecord> portersHomePageUsersRecordList = snapshot.data!;
        final portersHomePageUsersRecord =
            portersHomePageUsersRecordList.isNotEmpty
                ? portersHomePageUsersRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            drawer: Drawer(
              elevation: 16.0,
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('ListOfPackages');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.outgoing_mail,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Доступные посылки',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 5.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('LisOfFlights');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.airplanemode_active_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Мои рейсы',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 5.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('personalAccount');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.account_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(
                                    'Мой аккаунт',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/IMG_8292.PNG',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF3A4148),
              automaticallyImplyLeading: false,
              leading: Visibility(
                visible: loggedIn,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                ),
              ),
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (loggedIn) {
                      return;
                    }

                    context.pushNamed('LoginPage');
                  },
                  child: Text(
                    loggedIn ? 'Pigeon' : 'Авторизация',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 26.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Lato'),
                        ),
                  ),
                ),
              ),
              actions: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/IMG_8293.PNG',
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 11.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/DALLE_2024-08-17_09.29.23_-_An_image_of_a_woman_giving_a_bag_to_a_man_at_an_airport._Both_the_woman_and_the_man_are_happy,_smiling_at_each_other._The_background_shows_elements_of.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 200.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Builder(
                              builder: (context) =>
                                  StreamBuilder<List<TutorialPorterRecord>>(
                                stream: queryTutorialPorterRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<TutorialPorterRecord>
                                      containerTutorialPorterRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final containerTutorialPorterRecord =
                                      containerTutorialPorterRecordList
                                              .isNotEmpty
                                          ? containerTutorialPorterRecordList
                                              .first
                                          : null;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        barrierColor: const Color(0x6C000000),
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: TutorialPorterWidget(
                                                url:
                                                    containerTutorialPorterRecord!
                                                        .porterTutorialPic,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Color(0x74000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Как пользоваться\nприложением?',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 40.0,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 0.0, 1.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              Icons.flight_takeoff,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              size: 25.0,
                                            ),
                                          ),
                                          Flexible(
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .porterFromValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'из Астана\tNQZ',
                                                'из Алматы\tALA',
                                                'из Актау\tSCO',
                                                'из Актобе\tAKX',
                                                'из Атырау\tGUW',
                                                'из Жезказган\tDZN',
                                                'из Караганды\tKGF',
                                                'из Кызылорда\tKZO',
                                                'из Кокшетау\tKOV',
                                                'из Костанай\tKSN',
                                                'из Павлодар\tPWQ',
                                                'из Петропавловск\tPPK',
                                                'из Семей\tPLX',
                                                'из Талдыкорган\tTDK',
                                                'из Тараз\tDMB',
                                                'из Уральск\tURA',
                                                'из Оскемен\tUKK',
                                                'из Шымкент\tCIT'
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.porterFromValue =
                                                      val),
                                              width: 260.0,
                                              height: double.infinity,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                              hintText: 'Откуда вы вылетаете?',
                                              icon: Icon(
                                                Icons.arrow_drop_down_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: const Color(0x00010203),
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Container(
                                            width: 60.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 0.5,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 40.0,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 0.0, 1.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Icon(
                                              Icons.flight_land,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              size: 25.0,
                                            ),
                                          ),
                                          Flexible(
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .porterToValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'в Астана\tNQZ',
                                                'в Алматы\tALA',
                                                'в Актау\tSCO',
                                                'в Актобе\tAKX',
                                                'в Атырау\tGUW',
                                                'в Жезказган\tDZN',
                                                'в Караганды\tKGF',
                                                'в Кызылорда\tKZO',
                                                'в Кокшетау\tKOV',
                                                'в Костанай\tKSN',
                                                'в Павлодар\tPWQ',
                                                'в Петропавловск\tPPK',
                                                'в Семей\tPLX',
                                                'в Талдыкорган\tTDK',
                                                'в Тараз\tDMB',
                                                'в Уральск\tURA',
                                                'в Оскемен\tUKK',
                                                'в Шымкент\tCIT'
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.porterToValue =
                                                      val),
                                              width: 260.0,
                                              height: double.infinity,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                              hintText: 'Куда вы полетите?',
                                              icon: Icon(
                                                Icons.arrow_drop_down_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: const Color(0x00E0E3E7),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Container(
                                            width: 60.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 14.0, 20.0, 0.0),
                            child: StreamBuilder<List<PorterTakePackageRecord>>(
                              stream: queryPorterTakePackageRecord(
                                queryBuilder: (porterTakePackageRecord) =>
                                    porterTakePackageRecord.where(
                                  'portersMail',
                                  isEqualTo: currentUserEmail,
                                ),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<PorterTakePackageRecord>
                                    buttonPorterTakePackageRecordList =
                                    snapshot.data!;
                                final buttonPorterTakePackageRecord =
                                    buttonPorterTakePackageRecordList.isNotEmpty
                                        ? buttonPorterTakePackageRecordList
                                            .first
                                        : null;

                                return FFButtonWidget(
                                  onPressed: () async {
                                    if (loggedIn) {
                                      if (!((_model.porterFromValue != null &&
                                              _model.porterFromValue != '') &&
                                          (_model.porterToValue != null &&
                                              _model.porterToValue != ''))) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text(
                                                  'Необходимо заполнить все строки'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        return;
                                      }
                                      if ((buttonPorterTakePackageRecord
                                                      ?.porterChooseDeparture !=
                                                  null &&
                                              buttonPorterTakePackageRecord
                                                      ?.porterChooseDeparture !=
                                                  '') &&
                                          (buttonPorterTakePackageRecord
                                                      ?.porterChooseArrive !=
                                                  null &&
                                              buttonPorterTakePackageRecord
                                                      ?.porterChooseArrive !=
                                                  '')) {
                                        FFAppState().PorterFrom =
                                            _model.porterFromValue!;
                                        FFAppState().PorterTo =
                                            _model.porterToValue!;
                                        FFAppState().update(() {});

                                        await DeletedFlightsOfPorterRecord
                                            .collection
                                            .doc()
                                            .set(
                                                createDeletedFlightsOfPorterRecordData(
                                              estTime:
                                                  buttonPorterTakePackageRecord
                                                      ?.porterTakeCreateTime,
                                              porterPhone:
                                                  buttonPorterTakePackageRecord
                                                      ?.porterPhoneNumber,
                                              porterMail:
                                                  buttonPorterTakePackageRecord
                                                      ?.portersMail,
                                              departure:
                                                  buttonPorterTakePackageRecord
                                                      ?.porterChooseDeparture,
                                              arrive:
                                                  buttonPorterTakePackageRecord
                                                      ?.porterChooseArrive,
                                            ));
                                        await buttonPorterTakePackageRecord!
                                            .reference
                                            .delete();
                                      } else {
                                        FFAppState().PorterFrom =
                                            _model.porterFromValue!;
                                        FFAppState().PorterTo =
                                            _model.porterToValue!;
                                        FFAppState().update(() {});

                                        await PorterTakePackageRecord.collection
                                            .doc()
                                            .set(
                                                createPorterTakePackageRecordData(
                                              porterChooseDeparture:
                                                  _model.porterFromValue,
                                              porterChooseArrive:
                                                  _model.porterToValue,
                                              porterTakeCreateTime:
                                                  getCurrentTimestamp,
                                              porterPhoneNumber:
                                                  currentPhoneNumber,
                                              portersMail: currentUserEmail,
                                            ));
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text(
                                                  'Отлично! Скоро вы увидите доступные посылки'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        context.pushNamed(
                                          'ListOfPackages',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );

                                        return;
                                      }

                                      await PorterTakePackageRecord.collection
                                          .doc()
                                          .set(
                                              createPorterTakePackageRecordData(
                                            porterChooseDeparture:
                                                _model.porterFromValue,
                                            porterChooseArrive:
                                                _model.porterToValue,
                                            porterTakeCreateTime:
                                                getCurrentTimestamp,
                                            porterPhoneNumber:
                                                currentPhoneNumber,
                                            portersMail: currentUserEmail,
                                          ));
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Отлично! Скоро вы увидите доступные посылки'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );

                                      context.pushNamed(
                                        'ListOfPackages',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                          ),
                                        },
                                      );
                                    } else {
                                      await showDialog(
                                        barrierColor: const Color(0xD9000000),
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: SizedBox(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.8,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8,
                                                child: const AuthDialogPorterWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      );

                                      return;
                                    }
                                  },
                                  text: 'Забрать посылку',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: (_model.porterFromValue != null &&
                                                _model.porterFromValue != '') &&
                                            (_model.porterToValue != null &&
                                                _model.porterToValue != '')
                                        ? const Color(0xFF3A4148)
                                        : const Color(0xFF848484),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 11.0,
                                    borderSide: const BorderSide(
                                      color: Color(0x00173E4D),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                );
                              },
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
        );
      },
    );
  }
}
