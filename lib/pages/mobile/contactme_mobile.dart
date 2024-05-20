import 'package:flutter/material.dart';
import 'package:web_myself/utils/text_controller.dart';
import 'package:web_myself/widgets/elevatedbutton.dart';
import 'package:web_myself/widgets/textfield.dart';

// ignore: must_be_immutable
class ContactScreenMobile extends StatefulWidget {
  const ContactScreenMobile({super.key});

  @override
  State<ContactScreenMobile> createState() => _ContactScreenMobileState();
}

class _ContactScreenMobileState extends State<ContactScreenMobile> {
  final _controller = TextController();

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: const Color(0xff002147),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * .1, vertical: size.height * .1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Contact Me",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                    child: CustomTextFormField(
                        hintText: "Full Name",
                        controller: _controller.nameController)),
                const SizedBox(width: 20),
                Expanded(
                    child: CustomTextFormField(
                        hintText: "Email Adress",
                        controller: _controller.emailController)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: CustomTextFormField(
                        hintText: "Mobile Number",
                        controller: _controller.mobileController)),
                const SizedBox(width: 20),
                Expanded(
                    child: CustomTextFormField(
                        hintText: "Email Subject",
                        controller: _controller.emailSubjectController)),
              ],
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: "Your Massage",
              controller: _controller.msgController,
              maxLines: 8,
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(text: "Send", onTap: (){})
          ],
        ),
      ),
    );
  }
}
