import 'package:flutter/material.dart';

class NotificacaoWidget extends StatefulWidget {
  final int? textController;
  NotificacaoWidget({Key? key, this.textController}) : super(key: key);

  @override
  _NotificacaoWidgetState createState() => _NotificacaoWidgetState();
}

class _NotificacaoWidgetState extends State<NotificacaoWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
  )..repeat(reverse: false, period: Duration(seconds: 5));
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.24,
      top: MediaQuery.of(context).size.height * 0.004,
      child: Container(
        height: 24,
        width: 24,
        child: RotationTransition(
          turns: _animation,
          child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: widget.textController! > 9
                  ? Text(
                      '9+',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      widget.textController.toString(),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
        ),
      ),
    );
  }
}
