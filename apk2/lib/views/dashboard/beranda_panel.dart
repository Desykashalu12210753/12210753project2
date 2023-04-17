import 'package:flutter/material.dart';

class BerandaPanel extends StatelessWidget {
  const BerandaPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundDashboard(),
        InformasiPengguna(),
        SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(20))),
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Berita',
                        style: TextStyle(fontSize: 19),
                      ),
                      LabelBerita(),
                      ListBerita(),
                      SizedBox(
                        height: 40,
                      ),
                      Wrap(
                        children: [
                          TombolMenu(
                            gambar: 'assets/icon1.png',
                          ),
                          TombolMenu(
                            gambar: 'assets/icon2.png',
                          ),
                          TombolMenu(
                            gambar: 'assets/icon3.png',
                          ),
                          TombolMenu(
                            gambar: 'assets/icon4.png',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
        )),
      ],
    );
  }
}

class TombolMenu extends StatelessWidget {
  final String gambar;
  const TombolMenu({super.key, this.gambar = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      margin: EdgeInsets.all(9),
      child: Image.asset(
        gambar,
        width: 60,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xdadadaff),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(33, 112, 112, 112),
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(2, 2),
            )
          ]),
    );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset(
                'assets/berita1.jpg',
                height: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset(
                'assets/berita2.jpg',
                height: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset(
                'assets/berita3.jpg',
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelBerita extends StatelessWidget {
  const LabelBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(alignment: Alignment.bottomLeft, child: Text('Berita')),
    );
  }
}

class InformasiPengguna extends StatelessWidget {
  const InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/foto.jpg',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Shalu',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'desykashalu02@gmail.com',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/bell.png',
            width: 40,
          )
        ],
      ),
    );
  }
}

class BackgroundDashboard extends StatelessWidget {
  const BackgroundDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/background.png',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
