import 'package:flutter/material.dart';

marginer(int index,context) {
  if (index == 0) {
    return  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.115);
  } else if (index == 1) {
    return EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.005);
  } else if(index==2){
    return EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.12);
  }
}