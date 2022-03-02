import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: size.width * 0.8,
        child: SizedBox(
          child: Drawer(
            child: SingleChildScrollView(
              child: Container(
                color: const Color(0xffFFFFFF),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: const Image(
                        image: AssetImage("Assets/Splash.png"),
                        fit: BoxFit.cover,
                        height: 170,
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Our Content",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.folder,
                              color: Colors.blue,
                              size: 25,
                            ))
                      ],
                    ),
                    const ListTile(
                      //  minVerticalPadding:0 ,
                      dense: true,

                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.menu_book,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Sri Guru Granth Sahib",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.list_alt,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Sundar Gutka",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.border_color,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Books",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.article_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Articles",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.volume_up_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Audios",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.video_collection_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Videos",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Download Section",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.blue,
                              size: 25,
                            )),
                      ],
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.article_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Daily Prayers",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.border_color,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Books",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      horizontalTitleGap: 30,
                      leading: Icon(
                        Icons.volume_up_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Audios",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Share App",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              color: Colors.blue,
                              size: 25,
                            )),
                      ],
                    ),
                    QrImage(
                      data: 'This is a simple QR code',
                      version: QrVersions.auto,
                      size: 120,
                      gapless: false,
                    ),
                    const Center(
                      child: Text(
                        "Scan to share",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "By SggSonline.com",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
