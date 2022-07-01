import 'package:flutter/cupertino.dart';

class DraggableFloatingActionButton extends StatefulWidget {
  final Widget child;
  final Offset initalOffset;
  final VoidCallback onPressed;

  const DraggableFloatingActionButton({Key? key,
    required this.child,
    required this.onPressed,
    required this.initalOffset}) : super(key: key);

  @override
  State<DraggableFloatingActionButton> createState() => _DraggableFloatingActionButtonState();
}

class _DraggableFloatingActionButtonState extends State<DraggableFloatingActionButton> {
  bool _isDragging = false;
  late Offset _offset;
  @override
  void initState(){
    super.initState();
    _offset=widget.initalOffset;
  }
  void _updatePosition(PointerMoveEvent pointerMoveEvent){
    double newOffsetX = _offset.dx + pointerMoveEvent.delta.dx;
    double newOffsetY = _offset.dy + pointerMoveEvent.delta.dy;

    setState((){
      _offset= Offset(newOffsetX, newOffsetY);

    });

  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: _offset.dx,
        bottom: _offset.dy,

        child: Listener(
          onPointerMove: (PointerMoveEvent pointerMoveEvent){
            _updatePosition(pointerMoveEvent);
            setState((){
              _isDragging=true;

            });

          },
          onPointerUp: (PointerUpEvent pointerUpEvent){
            print("On pointer up");
            if(_isDragging){
              setState((){
                _isDragging=false;

              });
            } else{
              widget.onPressed();
            }
          },
          child: widget.child,

        ));
  }
}
