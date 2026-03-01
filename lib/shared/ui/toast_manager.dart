import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../domain/alert_info.dart';
import 'widgets/toast_card.dart';

class ToastManager{
  static final ToastManager _instance = ToastManager._internal();
  ToastManager._internal();

  factory ToastManager() => _instance;

  OverlayEntry? _currentEntry;
  Timer? _timer;

  void show(BuildContext context, AlertInfo alertInfo, {int durationInMillis = 7000}){
    _clearCurrent();

    final overlay = Overlay.maybeOf(context, rootOverlay: true);
    if(overlay != null) {
      _currentEntry = OverlayEntry(
          builder: (context) => ToastCard(
              message: alertInfo.message,
              type: alertInfo.type,
              durationInMillis: durationInMillis
          )
      );
      overlay.insert(_currentEntry!);
      _timer = Timer(
          Duration(milliseconds: durationInMillis),
              () {
            _clearCurrent();
          }
      );
    }
  }

  void _clearCurrent(){
    _currentEntry?.remove();
    _currentEntry = null;
    _timer?.cancel();
    _timer = null;
  }
}
