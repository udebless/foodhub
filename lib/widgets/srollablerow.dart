import 'package:flutter/material.dart';

class ScrollableRow extends StatelessWidget {
 final List<Widget>  children;
  const ScrollableRow({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:children,
      ),
    );
  }
}
