import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImagesPage extends StatefulWidget {
  bool _showAppbar = false;
  String imagem;
  ImagesPage(
    this.imagem,
  );
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: widget._showAppbar
          ? AppBar(
              backgroundColor: Colors.grey.shade400.withOpacity(0.1),
              elevation: 0.5,
              leading: InkWell(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          : PreferredSize(
              child: Container(),
              preferredSize: Size(0.0, 0.0),
            ),
      body: InkWell(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: PhotoView(
            initialScale: PhotoViewComputedScale.contained * 1,
            minScale: PhotoViewComputedScale.contained * 0.9,
            imageProvider: AssetImage(
              widget.imagem,
            ),
          ),
        ),
        onTap: () {
          _atualizarShowAppBar();
        },
      ),
    );
  }

  void _atualizarShowAppBar() {
    setState(() {
      widget._showAppbar == false
          ? widget._showAppbar = true
          : widget._showAppbar = false;
    });
  }
}
