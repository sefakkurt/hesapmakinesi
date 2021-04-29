import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1, sayi2, sonuc;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text('$sonuc'),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            RaisedButton(
              onPressed: sayiTopla(),
              child: Text('Toplama'),
            ),
            RaisedButton(
              onPressed: sayiCikar(),
              child: Text('Çıkarma'),
            ),
            RaisedButton(
              onPressed: sayiCarp(),
              child: Text('Çarpma'),
            ),
            RaisedButton(
              onPressed: sayiBol(),
              child: Text('Bölme'),
            ),
          ],
        ),
      ),
    );
  }
}
