import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String generatePid() {
  String _randomString = "p" +
      math.Random().nextInt(9999).toString() +
      math.Random().nextInt(9999).toString() +
      math.Random().nextInt(9999).toString();
  return _randomString;
}
