import 'package:flutter/material.dart';
class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {

 double _width = 200;
 double _opacity = 1;
 double _margin = 0;
 Color _color = Colors.blue;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
          duration: Duration(seconds: 1),
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => _margin = 50),
                child: Center(
                  child: Text('Animate Margin'),
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _width = 250),
                child: Center(
                  child: Text('Animate Width'),
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _color = Colors.green),
                child: Center(
                  child: Text('Animate Color'),
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() => _opacity = 0),
                child: Center(
                  child: Text('Animate Opacity'),
                ),
              ),
              AnimatedOpacity(
                  opacity: _opacity, duration: Duration(
                seconds: 1,
              ),
                child: Text('Color',),

              ),
            ],
          ),
        ),
    );
  }
}
