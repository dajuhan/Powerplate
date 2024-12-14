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
import '/auth/firebase_auth/auth_util.dart';

double? newCustomFunction(
  int? proteinCount,
  int? goalCount,
) {
  // write a function that calculates the percentage a user has made towards their protein goal, getting the protein value from one api call and the goal value from another
  // Assume the protein goal is 100 grams
  if (proteinCount != null) {
    double percentage = (proteinCount / goalCount!);
    if (percentage <= 1) {
      return percentage;
    } else {
      return 1;
    }
  }
  return null;
}

double? macroPercent(
  int? proteinCount,
  int? goalCount,
) {
  if (proteinCount != null) {
    double percentage = (proteinCount / goalCount!);
    if (percentage <= 1) {
      percentage *= 100;
      percentage.round();
      return percentage / 100;
    } else {
      return 1;
    }
  }
  return null;
}

String formatDate(String dateString) {
  // Parse the input date string to a DateTime object
  DateTime dateTime = DateTime.parse(dateString);

  // Create a list of month names
  List<String> monthNames = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  // Format the date manually
  String month = monthNames[dateTime.month - 1]; // Get the month name
  int day = dateTime.day; // Get the day
  int year = dateTime.year; // Get the year

  return "$month $day, $year";
}

String changeDateToDay(String date) {
  // Parse the input date string to a DateTime object
  DateTime dateTime = DateTime.parse(date);

  // Format the date as "MM/D/YYYY"
  String formattedDate = '${dateTime.month}/${dateTime.day}/${dateTime.year}';

  return formattedDate;
}
