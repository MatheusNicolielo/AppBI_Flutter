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
      body: Stack(
        children: <Widget>[
          InkWell(
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
          widget._showAppbar
              ? _adicionarAppBar()
              : PreferredSize(
                  child: Container(),
                  preferredSize: Size(0.0, 0.0),
                ),
        ],
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

  Widget _adicionarAppBar() {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors.grey.shade800.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
