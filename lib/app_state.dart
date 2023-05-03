import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _vocabulary = jsonDecode(
      '{\"userId\":null,\"lastFetchedDate\":null,\"easyVocabs\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0},\"mediumVocabs\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0},\"hardVocabs\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0}}');
  dynamic get vocabulary => _vocabulary;
  set vocabulary(dynamic _value) {
    _vocabulary = _value;
  }

  dynamic _Writing = jsonDecode(
      '{\"userId\":null,\"lastFetchedDate\":null,\"easyWriting\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0},\"mediumWriting\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0},\"hardWriting\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0}}');
  dynamic get Writing => _Writing;
  set Writing(dynamic _value) {
    _Writing = _value;
  }

  dynamic _speaking = jsonDecode(
      '{\"userId\":null,\"lastFetchedDate\":null,\"easySpeaking\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0},\"mediumSpeaking\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0},\"hardSpeaking\":{\"questions\":[],\"lastUpdatedDate\":null,\"totalAnswered\":0}}');
  dynamic get speaking => _speaking;
  set speaking(dynamic _value) {
    _speaking = _value;
  }

  int _fills = 0;
  int get fills => _fills;
  set fills(int _value) {
    _fills = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
