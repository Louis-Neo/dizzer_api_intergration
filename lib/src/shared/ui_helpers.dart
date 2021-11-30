import 'package:flutter/material.dart';

// Horizontal Spacing
const Widget horizontalTinySpace = SizedBox(width: 5);
const Widget horizontalSmallSpace = SizedBox(width: 10);
const Widget horizontalMediumSpace = SizedBox(width: 25.0);
const Widget horizontalLargeSpace = SizedBox(width: 50);

// Vertical Spacing
const Widget verticalMicroSpace = SizedBox(height: 2.5);
const Widget verticalTinySpace = SizedBox(height: 5);
const Widget verticalSmallSpace = SizedBox(height: 10);
const Widget verticalMediumSpace = SizedBox(height: 25);
const Widget verticalLargeSpace = SizedBox(height: 50);

// Screen Sizing Helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) => screenWidth(context) * percentage;
double screenHeightPercentage(BuildContext context, {double percentage = 1}) => screenHeight(context) * percentage;