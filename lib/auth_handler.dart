// ignore_for_file: avoid_print

library auth_handler;

import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthHandler {
  /// Sender name.
  String? _senderName;

  /// Sender email address.
  String? _senderEmail;

  /// Recipient email address.
  String? _recipientEmail;

  /// OTP code length.
  int? _otpLength;

  /// OTP code.
  String? _otp;

  /// Configuration
  config({
    String senderName = "Copyit",
    String senderEmail = "no-reply@copyit.dev",
    int otpLength = 6,
  }) {
    _senderName = senderName;
    _senderEmail = senderEmail;
    _otpLength = otpLength;
  }

  /// Send OTP code to recipient email address.
  Future sendOtp(String email) async {
    _recipientEmail = email;
    String baseUrl =
        "http://flutter.rohitchouhan.com/email-otp/authhandler.php";
    String url =
        "$baseUrl?app_name=$_senderName&app_email=$_senderEmail&user_email=$_recipientEmail&otp_length=$_otpLength";
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        if (jsonDecode(response.body)['status'] == true) {
          _otp = json['otp'].toString();
          print(_otp);
          return true;
        }
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  /// Verify OTP code with recipient email address.
  Future verifyOtp(String otp) async {
    if (_recipientEmail!.isEmpty || _otp.toString().isEmpty) {
      print("❌ The email or otp is empty. ❌");
      return false;
    } else if (_otp == otp) {
      print("✅ Verified successfully");
      return true;
    } else {
      print("❌ Invalid OTP");
      return false;
    }
  }
}
