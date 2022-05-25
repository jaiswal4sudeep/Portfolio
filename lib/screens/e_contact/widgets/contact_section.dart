import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_constant.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
    required this.formkey,
    required this.width,
    required this.name,
    required this.email,
    required this.message,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final double width;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController message;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Center(
        child: Column(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                color: AppConstant.backgroundColor,
                border: Border.all(
                  color: AppConstant.preBGColor.withOpacity(0.5),
                  width: 1.sp,
                ),
              ),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contact Form',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: TextFormField(
                          controller: name,
                          autofocus: false,
                          cursorColor: AppConstant.primaryColor,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.primaryColor,
                                width: 1,
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name cannot be empty";
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: TextFormField(
                          controller: email,
                          autofocus: false,
                          cursorColor: AppConstant.primaryColor,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.primaryColor,
                                width: 1,
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "E-Mail cannot be empty";
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-zA-Z0-9+_.-]+.[a-z]")
                                .hasMatch(value)) {
                              return "Please enter a valid E-Mail";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: TextFormField(
                          controller: message,
                          autofocus: false,
                          cursorColor: AppConstant.primaryColor,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          minLines: 5,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.primaryColor,
                                width: 1,
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Message cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: SizedBox(
                          width: 120.sp,
                          height: 30.sp,
                          child: TextButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                print('Message Sent');
                              }
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                  side: BorderSide(
                                    color: AppConstant.primaryColor,
                                    width: 1.sp,
                                  ),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Send Message',
                                style: TextStyle(
                                  color: AppConstant.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                'Made with \u2665 with Flutter.',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 12.sp,
                    ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
