import 'package:flutter/material.dart';

Widget TextFormWidget ({
  required var Control ,
  required var txt ,
  required IconData preficon ,
  // for password
  void Function()? onTap ,
   var sufficon = null ,
   bool ispass = false ,
  TextInputType type = TextInputType.emailAddress ,

}) =>TextFormField(
  controller:Control,
  decoration: InputDecoration(
    labelText: "$txt",
    border:OutlineInputBorder(
      borderRadius:BorderRadius.circular(20.0),
    ),
    prefixIcon: Icon(preficon),
    suffixIcon: ( sufficon != null ) ? InkWell(
       onTap: onTap,
        child: Icon (sufficon))  : null,
  ),
  keyboardType: type,
  obscureText: ispass,
  onFieldSubmitted : (value){
    print (value);
  },
  validator: (value){
     if (value!.isEmpty){
       return "$txt must not be empty";
     }
     return null ;
  },

);