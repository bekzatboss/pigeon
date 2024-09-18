import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _SenderFrom = prefs.getString('ff_SenderFrom') ?? _SenderFrom;
    });
    _safeInit(() {
      _SenderTo = prefs.getString('ff_SenderTo') ?? _SenderTo;
    });
    _safeInit(() {
      _SenderPack = prefs.getString('ff_SenderPack') ?? _SenderPack;
    });
    _safeInit(() {
      _senderPhone = prefs.getString('ff_senderPhone') ?? _senderPhone;
    });
    _safeInit(() {
      _PorterFrom = prefs.getString('ff_PorterFrom') ?? _PorterFrom;
    });
    _safeInit(() {
      _PorterTo = prefs.getString('ff_PorterTo') ?? _PorterTo;
    });
    _safeInit(() {
      _userMail = prefs.getString('ff_userMail') ?? _userMail;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _SenderFrom = 'SenderFrom';
  String get SenderFrom => _SenderFrom;
  set SenderFrom(String value) {
    _SenderFrom = value;
    prefs.setString('ff_SenderFrom', value);
  }

  String _SenderTo = 'SenderTo';
  String get SenderTo => _SenderTo;
  set SenderTo(String value) {
    _SenderTo = value;
    prefs.setString('ff_SenderTo', value);
  }

  String _SenderPack = 'SenderPack';
  String get SenderPack => _SenderPack;
  set SenderPack(String value) {
    _SenderPack = value;
    prefs.setString('ff_SenderPack', value);
  }

  String _senderPhone = '';
  String get senderPhone => _senderPhone;
  set senderPhone(String value) {
    _senderPhone = value;
    prefs.setString('ff_senderPhone', value);
  }

  DateTime? _senderTime = DateTime.fromMillisecondsSinceEpoch(1715626260000);
  DateTime? get senderTime => _senderTime;
  set senderTime(DateTime? value) {
    _senderTime = value;
  }

  String _PorterFrom = '';
  String get PorterFrom => _PorterFrom;
  set PorterFrom(String value) {
    _PorterFrom = value;
    prefs.setString('ff_PorterFrom', value);
  }

  String _PorterTo = '';
  String get PorterTo => _PorterTo;
  set PorterTo(String value) {
    _PorterTo = value;
    prefs.setString('ff_PorterTo', value);
  }

  String _userMail = '';
  String get userMail => _userMail;
  set userMail(String value) {
    _userMail = value;
    prefs.setString('ff_userMail', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
