import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utilis/dimensions.dart';
class  BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText ({Key? key, this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: GoogleFonts.acme(
        textStyle: TextStyle(
            color: color,
            fontSize: Dimensions.font20,
            fontWeight: FontWeight.w400
      ),

      ),
    );
  }
}
