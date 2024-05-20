import 'package:flutter/material.dart';
import 'package:web_myself/utils/url_link.dart';
import 'package:web_myself/widgets/projectitem_mobile.dart';

class ProjectForMobile extends StatefulWidget {
  const ProjectForMobile({super.key});

  @override
  State<ProjectForMobile> createState() => _ProjectForMobileState();
}

class _ProjectForMobileState extends State<ProjectForMobile> {
  final _projectUrl = ProjectUrl();
  @override
  void initState() {
    _projectUrl;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      color: const Color(0xff00416A),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: size.height * .1),
        child: Column(
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
            HoverImage(
              imageUrl: "images/works/work11.jpg",
              hoverText: "image one",
              projectTitle: 'Translator App',
              projectDece: 'Here You can Translate many languages',
              ontap: () =>
                  _projectUrl.urlLauncher(context, _projectUrl.translator),
            ),
            HoverImage(
              imageUrl: "images/works/work22.jpg",
              hoverText: "image two",
              projectTitle: 'Qr&Bar Scanner',
              projectDece: 'Here You can Scan QR code and Bar Code',
              ontap: () =>
                  _projectUrl.urlLauncher(context, _projectUrl.qrScanner),
            ),
            HoverImage(
              imageUrl: "images/works/news.jpg",
              hoverText: "image one",
              projectTitle: 'News App',
              projectDece: 'Here You Can watch all of the world news',
              ontap: () => _projectUrl.urlLauncher(context, _projectUrl.news),
            ),
            HoverImage(
              imageUrl: "images/works/e-commerce.jpg",
              hoverText: "image two",
              projectTitle: 'E-commerce App',
              projectDece:
                  'Here you can see e-commerce app that can help you to shop some things',
              ontap: () =>
                  _projectUrl.urlLauncher(context, _projectUrl.eCommers),
            ),
            HoverImage(
              imageUrl: "images/works/chat.jpg",
              hoverText: "image one",
              projectTitle: 'Chat App',
              projectDece:
                  'Here is a chatting application that can help you to contact each other',
              ontap: () => _projectUrl.urlLauncher(context, _projectUrl.chat),
            ),
            HoverImage(
              imageUrl: "images/works/calculator.jpg",
              hoverText: "image two",
              projectTitle: 'Calculator App',
              projectDece:
                  'Here is a calculator app that can help you to calculate any number.',
              ontap: () =>
                  _projectUrl.urlLauncher(context, _projectUrl.calculator),
            ),
          ],
        ),
      ),
    );
  }
}
