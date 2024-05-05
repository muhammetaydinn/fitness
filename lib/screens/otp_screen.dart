// ignore_for_file: public_member_api_docs, sort_constructors_first
//otp screen 6 digits otp input
import 'package:fitness/service/forgot_password_service.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    Key? key,
  }) : super(key: key);
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            Text.rich(
              TextSpan(
                text: 'Enter the OTP sent to ',
                style: Theme.of(context).textTheme.bodyLarge,
                children: <TextSpan>[
                  TextSpan(
                    text: '$email',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // veya istediğiniz renk
                    ),
                  ),
                  //otp expires in 5 minutes
                ],
              ),
            ),
            const Text(
              ' (expires in 5 minutes)',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: PinCodeTextField(
                controller: otpController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                hintCharacter: "*",
                hintStyle: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.grey),
                length: 6,
                onChanged: (value) {
                  // Handle OTP input changes
                },
                onCompleted: (value) {
                  // Handle OTP input completion
                  dprint(value);
                },
                pinTheme: PinTheme(
                  inactiveColor: Colors.grey,
                  activeColor: Theme.of(context).colorScheme.surfaceTint,
                  selectedColor: Colors.blueAccent,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                appContext: context,
              ),
            ),
            const SizedBox(height: 32.0),
            //did not receive otp
            TextButton(
              onPressed: () {
                // Resend OTP
                ForgotPasswordService().sendEmail(email, true);
              },
              child: Text(
                'Did not receive OTP? Resend',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 50),
                //change radıus of button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.primaryContainer,
              ),
              onPressed: () {
                // Validate OTP
                ForgotPasswordService().sendOTP(otpController.text, email);
              },
              child: const Text('VERIFY'),
            ),
          ],
        ),
      ),
    );
  }
}
