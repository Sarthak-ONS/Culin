import 'package:flutter/material.dart';

class CustomStackedAppBar extends StatelessWidget {
  const CustomStackedAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 2,
        top: MediaQuery.of(context).padding.top,
        left: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Row(
        children: const [
          Text(
            'Culin',
            style: TextStyle(
              fontFamily: 'Satisfy',
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
