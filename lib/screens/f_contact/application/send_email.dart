// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:http/http.dart';
import '../../../core/app_constant.dart';

Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async {
  const serviceId = MailService.serviceId;
  const templateId = MailService.templateId;
  const userId = MailService.userId;

  final url = Uri.parse(MailService.mailSenderAPIURL);
  final response = post(
    url,
    headers: {
      'origin': 'http://localhost',
      'Content-type': 'application/json',
    },
    body: json.encode(
      {
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
        },
      },
    ),
  );
}
