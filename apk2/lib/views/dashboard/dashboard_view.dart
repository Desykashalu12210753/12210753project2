import 'package:apk2/providers/dashboard_provider.dart';
import 'package:apk2/views/dashboard/beranda_panel.dart';
import 'package:apk2/views/dashboard/berita_panel.dart';
import 'package:apk2/views/pengaturan_panel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Dashbosrdview extends StatelessWidget {
  const Dashbosrdview({super.key});

  @override
  Widget build(BuildContext context) {
    final panels = [
      BerandaPanel(),
      BeritaPanel(),
      PengaturanPanel(),
    ];
    return Consumer<DashboardProvider>(builder: (context, prov, w) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            prov.ubahTab(value);
            print("tab $value");
          },
          currentIndex: prov.tabaktif,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'Beranda'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.newspaper), label: 'Berita'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.wrench), label: 'Pengaturan'),
          ],
        ),
        body: panels[prov.tabaktif],
      );
    });
  }
}
