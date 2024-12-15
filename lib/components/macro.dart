import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyMacro extends StatelessWidget {
  final String title;
  final int val;
  final IconData icon;
  const MyMacro({
    required this.title,
    required this.val,
    required this.icon,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return   Expanded(
            child: Container(
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow:  [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(2, 2),
                blurRadius: 5,
              )
            ]
          ),
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                  FaIcon(
                  icon,
                  color: Colors.red,
                ),
                const SizedBox(height: 4.0,),
                Text(
                  title == 'calories'?'$val $title':'${val}g $title',
                  style: const TextStyle(
                    fontSize: 10
                  ),
                  ),
              ],
            ),
          ),
          ),
          );
  }
}