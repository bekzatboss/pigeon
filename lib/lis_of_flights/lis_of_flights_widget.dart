import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lis_of_flights_model.dart';
export 'lis_of_flights_model.dart';

class LisOfFlightsWidget extends StatefulWidget {
  const LisOfFlightsWidget({
    super.key,
    this.ttimestamp,
  });

  final DateTime? ttimestamp;

  @override
  State<LisOfFlightsWidget> createState() => _LisOfFlightsWidgetState();
}

class _LisOfFlightsWidgetState extends State<LisOfFlightsWidget> {
  late LisOfFlightsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LisOfFlightsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF3A4148),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('PortersHomePage');
            },
            child: Icon(
              Icons.arrow_back_outlined,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 24.0,
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Pigeon',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 26.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Lato'),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Text(
                  'Ваши актуальные рейсы',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 70.0, 20.0),
                  child: StreamBuilder<List<PorterTakePackageRecord>>(
                    stream: queryPorterTakePackageRecord(
                      queryBuilder: (porterTakePackageRecord) =>
                          porterTakePackageRecord.where(
                        'portersMail',
                        isEqualTo: currentUserEmail,
                      ),
                    )..listen((snapshot) {
                        List<PorterTakePackageRecord>
                            listOfPackageForPorterPorterTakePackageRecordList =
                            snapshot;
                        if (_model.listOfPackageForPorterPreviousSnapshot1 !=
                                null &&
                            !const ListEquality(
                                    PorterTakePackageRecordDocumentEquality())
                                .equals(
                                    listOfPackageForPorterPorterTakePackageRecordList,
                                    _model
                                        .listOfPackageForPorterPreviousSnapshot1)) {
                          () async {
                            triggerPushNotification(
                              notificationTitle: 'Новый заказ!',
                              notificationText:
                                  'По вашему маршруту! Успейте забрать',
                              notificationSound: 'default',
                              userRefs: [currentUserReference!],
                              initialPageName: 'LisOfFlights',
                              parameterData: {},
                            );

                            safeSetState(() {});
                          }();
                        }
                        _model.listOfPackageForPorterPreviousSnapshot1 =
                            snapshot;
                      }),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PorterTakePackageRecord>
                          listOfPackageForPorterPorterTakePackageRecordList =
                          snapshot.data!;

                      return ListView.separated(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          8.0,
                          0,
                          0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount:
                            listOfPackageForPorterPorterTakePackageRecordList
                                .length,
                        separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                        itemBuilder: (context, listOfPackageForPorterIndex) {
                          final listOfPackageForPorterPorterTakePackageRecord =
                              listOfPackageForPorterPorterTakePackageRecordList[
                                  listOfPackageForPorterIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(5.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Icon(
                                            Icons.flight_takeoff,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                        ),
                                        Text(
                                          listOfPackageForPorterPorterTakePackageRecord
                                              .porterChooseDeparture,
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
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
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
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
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                          ),
                                          Text(
                                            listOfPackageForPorterPorterTakePackageRecord
                                                .porterChooseArrive,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
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
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 12.0, 0.0),
                                            child: Icon(
                                              Icons.access_time_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                          ),
                                          Text(
                                            dateTimeFormat(
                                              "relative",
                                              listOfPackageForPorterPorterTakePackageRecord
                                                  .porterTakeCreateTime!,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
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
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 7.0, 10.0, 3.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await DeletedFlightsOfPorterRecord
                                                .collection
                                                .doc()
                                                .set(
                                                    createDeletedFlightsOfPorterRecordData(
                                                  estTime:
                                                      listOfPackageForPorterPorterTakePackageRecord
                                                          .porterTakeCreateTime,
                                                  porterPhone:
                                                      listOfPackageForPorterPorterTakePackageRecord
                                                          .porterPhoneNumber,
                                                  porterMail:
                                                      listOfPackageForPorterPorterTakePackageRecord
                                                          .portersMail,
                                                  departure:
                                                      listOfPackageForPorterPorterTakePackageRecord
                                                          .porterChooseDeparture,
                                                  arrive:
                                                      listOfPackageForPorterPorterTakePackageRecord
                                                          .porterChooseArrive,
                                                ));
                                            await listOfPackageForPorterPorterTakePackageRecord
                                                .reference
                                                .delete();
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Рейс удален'),
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
                                          },
                                          text: 'Удалить рейс',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: 30.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFF3A4148),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: Colors.white,
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily),
                                                    ),
                                            elevation: 5.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF3A4148),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Ваши старые рейсы',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 20.0),
                            child: StreamBuilder<
                                List<DeletedFlightsOfPorterRecord>>(
                              stream: queryDeletedFlightsOfPorterRecord(
                                queryBuilder: (deletedFlightsOfPorterRecord) =>
                                    deletedFlightsOfPorterRecord.where(
                                  'porterMail',
                                  isEqualTo: currentUserEmail,
                                ),
                              )..listen((snapshot) {
                                  List<DeletedFlightsOfPorterRecord>
                                      listOfPackageForPorterDeletedFlightsOfPorterRecordList =
                                      snapshot;
                                  if (_model.listOfPackageForPorterPreviousSnapshot2 !=
                                          null &&
                                      !const ListEquality(
                                              DeletedFlightsOfPorterRecordDocumentEquality())
                                          .equals(
                                              listOfPackageForPorterDeletedFlightsOfPorterRecordList,
                                              _model
                                                  .listOfPackageForPorterPreviousSnapshot2)) {
                                    () async {
                                      triggerPushNotification(
                                        notificationTitle: 'Новый заказ!',
                                        notificationText:
                                            'По вашему маршруту! Успейте забрать',
                                        notificationSound: 'default',
                                        userRefs: [currentUserReference!],
                                        initialPageName: 'LisOfFlights',
                                        parameterData: {},
                                      );

                                      safeSetState(() {});
                                    }();
                                  }
                                  _model.listOfPackageForPorterPreviousSnapshot2 =
                                      snapshot;
                                }),
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
                                List<DeletedFlightsOfPorterRecord>
                                    listOfPackageForPorterDeletedFlightsOfPorterRecordList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding: const EdgeInsets.fromLTRB(
                                    0,
                                    8.0,
                                    0,
                                    0,
                                  ),
                                  reverse: true,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listOfPackageForPorterDeletedFlightsOfPorterRecordList
                                          .length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 0.0),
                                  itemBuilder:
                                      (context, listOfPackageForPorterIndex) {
                                    final listOfPackageForPorterDeletedFlightsOfPorterRecord =
                                        listOfPackageForPorterDeletedFlightsOfPorterRecordList[
                                            listOfPackageForPorterIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 5.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 5.0, 10.0, 5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Icon(
                                                      Icons.flight_takeoff,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    listOfPackageForPorterDeletedFlightsOfPorterRecord
                                                        .departure,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 3.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.flight_land,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Text(
                                                        listOfPackageForPorterDeletedFlightsOfPorterRecord
                                                            .arrive,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  22.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .access_time_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 27.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      dateTimeFormat(
                                                        "relative",
                                                        listOfPackageForPorterDeletedFlightsOfPorterRecord
                                                            .estTime!,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
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
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
