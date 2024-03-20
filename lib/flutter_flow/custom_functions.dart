import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String? makeUpperCase(String? txtString) {
  return txtString?.toUpperCase();
}

Color? locationColor(String? txtLocation) {
  switch (txtLocation) {
    case 'Allstate Arena':
      return Color(0xff0846af);
    case 'Rosemont Theatre':
      return Color(0xff8340db);
    case 'DES Convention Center':
      return Color(0xff5a595e);
    case 'Parkway Bank Park':
      return Color(0xff003dff);
    case 'Parkway Bank Sports Complex':
      return Color(0xff003366);
    case 'Impact Field':
      return Color(0xffff0202);
    case 'Rosemont Health and Fitness':
      return Color(0xff003366);
    default:
      return Color(0xffcccccc);
  }
}
