import 'package:flutter/material.dart';

class RainbowContainer extends StatefulWidget {
  @override
  _RainbowContainerState createState() => _RainbowContainerState();
}

class _RainbowContainerState extends State<RainbowContainer> {
  Color _currentColor = Colors.red;

  @override
  void initState() {
    super.initState();
    _startColorAnimation();
  }

  void _startColorAnimation() {
    Future.delayed( const Duration(seconds: 2), () {
      setState(() {
        _currentColor = _getNextColor(_currentColor);
        _startColorAnimation();
      });
    });
  }

  Color _getNextColor(Color currentColor) {
    if (currentColor == Colors.red) {
      return Colors.orange;
    } else if (currentColor == Colors.orange) {
      return Colors.yellow;
    } else if (currentColor == Colors.yellow) {
      return Colors.green;
    } else if (currentColor == Colors.green) {
      return Colors.blue;
    } else if (currentColor == Colors.blue) {
      return Colors.indigo;
    } else {
      return Colors.purple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      color: _currentColor,
    );
  }
}