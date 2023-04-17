import 'dart:async';

import 'package:apk2/models/berita_model.dart';
import 'package:apk2/providers/dashboard_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BeritaPanel extends StatelessWidget {
  const BeritaPanel({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BeritaLoardDataProvider>().refresh();
    return Scaffold(
      appBar: AppBar(
        title: Consumer<BeritaPanelProvider>(
          builder: (context, prov, w) {
            return Visibility(
              visible: prov.modecari,
              child: CupertinoSearchTextField(
                backgroundColor: Color.fromARGB(225, 196, 106, 4),
                style: TextStyle(color: Colors.white),
                placeholderStyle: TextStyle(color: Colors.white),
              ),
              replacement: Text('Berita Terkirm'),
            );
          },
        ),
        elevation: 0,
        actions: [
          Consumer<BeritaPanelProvider>(builder: (context, prov, w) {
            return IconButton(
              onPressed: () {
                prov.ubahmode();
              },
              icon: Visibility(
                  visible: prov.modecari == true,
                  child: Icon(FontAwesomeIcons.circleXmark),
                  replacement: Icon(FontAwesomeIcons.magnifyingGlass)),
            );
          })
        ],
      ),
      body: Consumer<BeritaLoardDataProvider>(builder: (context, prov, w) {
        return ListView(
          children: [
            for (BeritaModel bm in prov.data) itemBerita(bm),
          ],
        );
      }),
    );
  }

  Container itemBerita(BeritaModel bm) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Image.network(
                bm.image ?? '',
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, StackTrace) {
                  return Image.asset('assets/noimage.png');
                },
              ),
              decoration: BoxDecoration(border: Border.all()),
            ),
            Text('${bm.title}')
          ],
        ),
      ),
    );
  }
}
