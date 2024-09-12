import 'package:flutter/material.dart';

class DescBox extends StatelessWidget {
  const DescBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:25.0, right: 25, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("₹30.24",style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Delivery Fee",style: TextStyle(
                    color: Colors.grey
                  ),),
                ],
              ),
              Column(
                children: [
                  Text("25-35 min",style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Delivery Time",style: TextStyle(
                    color: Colors.grey
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
