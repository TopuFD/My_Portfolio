import 'package:flutter/material.dart';
import 'package:web_myself/utils/url_link.dart';
import 'package:web_myself/widgets/projectitem_desktop.dart';

class ProjectFofDesktop extends StatefulWidget {
  const ProjectFofDesktop({super.key});

  @override
  State<ProjectFofDesktop> createState() => _ProjectFofDesktopState();
}

class _ProjectFofDesktopState extends State<ProjectFofDesktop> {
  final _projectUrl = ProjectUrl();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      color: const Color(0xff00416A),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * .1, horizontal: size.height * .05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Latest Project",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DesktopProjectItem(
                  imageUrl: "images/works/work11.jpg",
                  hoverText: "project one",
                  projectTitle: 'Translator App',
                  projectDece: 'Here You can Translate many languages',
                  ontap: () =>_projectUrl.urlLauncher(context, _projectUrl.translator),
                ),
                DesktopProjectItem(
                  imageUrl: "images/works/work22.jpg",
                  hoverText: "project two",
                  projectTitle: 'Qr&Bar Scanner',
                  projectDece: 'Here You can Scan QR code and Bar Code',
                  ontap: () =>_projectUrl.urlLauncher(context, _projectUrl.qrScanner),
                ),
                DesktopProjectItem(
                  imageUrl: "images/works/news.jpg",
                  hoverText: "project three",
                  projectTitle: 'News App',
                  projectDece: 'Here You Can watch all of the world news',
                  ontap: () =>_projectUrl.urlLauncher(context, _projectUrl.news),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DesktopProjectItem(
                  imageUrl: "images/works/e-commerce.jpg",
                  hoverText: "project one",
                  projectTitle: 'E-commerce App',
                  projectDece:
                      'Here you can see e-commerce app that can help you to shop some things',
                  ontap: () =>_projectUrl.urlLauncher(context, _projectUrl.eCommers),
                ),
                DesktopProjectItem(
                  imageUrl: "images/works/chat.jpg",
                  hoverText: "project two",
                  projectTitle: 'Chat App',
                  projectDece:
                      'Here is a chatting application that can help you to contact each other',
                  ontap: () =>_projectUrl.urlLauncher(context, _projectUrl.chat),
                ),
                DesktopProjectItem(
                  imageUrl: "images/works/calculator.jpg",
                  hoverText: "project three",
                  projectTitle: 'Calculator App',
                  projectDece:
                      'Here is a calculator app that can help you to calculate any number.',
                  ontap: () =>_projectUrl.urlLauncher(context, _projectUrl.calculator),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
