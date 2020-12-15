import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  CameraScreen(this.cameras);

  @override
  CameraScreenState createState() {
    return new CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    print(widget.cameras);
    controller =
        new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (!controller.value.isInitialized) ? new Container() : new AspectRatio(aspectRatio: controller.value.aspectRatio,child: new CameraPreview(controller));
    // if (!controller.value.isInitialized) {
    //   return new Container();
    // }
    // return new AspectRatio(
    //   aspectRatio: controller.value.aspectRatio,
    //   child: new CameraPreview(controller),
    // );
  }

  Widget buildCameraView() {
    return new Container(
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              children: <Widget>[
                new AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: new CameraPreview(controller),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
