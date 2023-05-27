import 'package:flutter/material.dart';

import 'common/components/custom_text_form_field.dart';

void main() {
  runApp(
    const _App(),
  );
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: '이메일을 입력해주세요.',
              onChanged: (value) {
                print(value);
              },
            ),
            CustomTextFormField(
              hintText: '비밀번호를 입력해주세요.',
              onChanged: (value) {
                print(value);
              },
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
