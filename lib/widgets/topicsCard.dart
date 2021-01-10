import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicsCard extends StatelessWidget {
  final String topic;
  final bool isSelect;

  const TopicsCard({Key key, this.topic, this.isSelect}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: isSelect
            ? Colors.purple.withOpacity(0.1)
            : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: Alignment.center,
      child: Text(
        topic,
        style: GoogleFonts.poppins(
          color: isSelect
              ? Colors.purple.withOpacity(0.7)
              : Colors.black.withOpacity(0.5),
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
