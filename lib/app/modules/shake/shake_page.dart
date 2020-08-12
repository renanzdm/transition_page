import 'package:flutter/material.dart';

class ShakePage extends StatefulWidget {
  final String title;
  const ShakePage({Key key, this.title = "Shake"}) : super(key: key);

  @override
  _ShakePageState createState() => _ShakePageState();
}

class _ShakePageState extends State<ShakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShakeTransition(
              duration: const Duration(seconds: 2),
              axis: Axis.horizontal,
              offset: 150,
              child: Text(
                'Hello Guys',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ShakeTransition(
              duration: const Duration(seconds: 2),
              axis: Axis.vertical,
              offset: 200,
              child: Padding(
                  padding: const EdgeInsets.all(50.0), child: FlutterLogo()),
            ),
          ],
        ),
      ),
    );
  }
}

class ShakeTransition extends StatelessWidget {
  const ShakeTransition(
      {Key key,
      this.child,
      this.offset,
      this.axis,
      this.duration = const Duration(milliseconds: 1000)})
      : super(key: key);
  final Widget child;
  final double offset;
  final Axis axis;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.elasticOut,
      tween: Tween(begin: 1.0, end: 0),
      duration: duration,
      builder: (context, value, _) {
        return Transform.translate(
          offset: axis == Axis.horizontal
              ? Offset(
                  offset * value,
                  0.0,
                )
              : Offset(
                  0.0,
                  offset * value,
                ),
          child: child,
        );
      },
    );
  }
}
