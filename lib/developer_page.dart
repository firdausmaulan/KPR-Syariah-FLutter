import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Developer'),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      child: Image.network(
                        'https://2.bp.blogspot.com/-WrDIrSd8rXE/UoWrx1lMlCI/AAAAAAAAAB4/Jrw0w4MJCsE/s1600/Kaito_Kuroba_Avatar_by_Phantom_Akiko.jpg',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Maulana Firdaus"),
                    SizedBox(height: 10),
                    CupertinoButton(
                      onPressed: _launchURL,
                      color: CupertinoColors.darkBackgroundGray,
                      child: Text(
                        "Github".toUpperCase(),
                        style: TextStyle(
                            color: CupertinoColors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}

// Group of EVENT / Method
_launchURL() async {
  const url = 'https://github.com/firdausmaulan?tab=repositories';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
