import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Color mainGreen = Color(0xff79B62D);
Color mainWhite=Colors.white;
Color mainGrey=Color(0xFFF1F2F2);






Widget defaultTextField
({
  required TextEditingController controller,
  TextInputType ?keyboardType,
  String ?initialValue,
  Function()? onsubmit,
  Function()? onChange,
  Function()? onTap,
  bool isPassword = false,
  required String? Function(String?)? validate,
  required String? label,
   Widget? prefix,
  Widget? suffix,
  Function? suffixPressed,
  bool isClickable = true,
})
=>Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)

  ),
  child:   TextFormField(
    initialValue: initialValue,
     controller: controller,
    keyboardType: keyboardType,
    onTap: onTap,
    validator: validate,
    decoration: InputDecoration(
      border: InputBorder.none,
      suffix: suffix,
      prefixIcon: prefix,
      label: Text(label!),
    ),
  ));

defaultBottom({
  String? imageText ,
   Color? background=  const Color(0XFF4040404),
required Function()? function,
required String text,
double radius =8,
  required double width,
})=>Container(
  width: width,
 decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: background,),
  child: Container(
      child: MaterialButton(onPressed: function,child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[ Container(alignment:Alignment.centerLeft,child: Text(text,style: TextStyle(color: Colors.white),),),Container(child: Image.asset(imageText!)),]))
  )
);

  defaultContainer(
{
  required String? text,
  required IconData prefix,
  required IconData suffix,
})=>Padding(
    padding: const EdgeInsets.only(left: 33,),
  child:   Container(
  child: Row(children: [
  Padding(
  padding: const EdgeInsets.only(right: 15),
  child: Icon(suffix),
  ),
  Padding(
  padding: const EdgeInsets.only(right: 200),
  child: Text(text!,style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
  ),

   Container(
       alignment: Alignment.centerLeft,
       child: Icon(Icons.arrow_forward_ios,size: 20,)),

  ],),
  ),
);



