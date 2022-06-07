import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_tsel/shared/theme.dart';
import 'package:my_tsel/widgets/custom_button.dart';
import 'package:my_tsel/widgets/custom_button_icon.dart';
import 'package:my_tsel/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _nomorHpController = TextEditingController();
  bool _isEmptyNomorHp = true;
  bool _isLoading = false;

  @override
  void initState() {
    _nomorHpController.addListener(() {
      final _isEmptyNomorHp = _nomorHpController.text.isNotEmpty;
      setState(() {
        this._isEmptyNomorHp = _isEmptyNomorHp;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _nomorHpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //NOTE: Logo
                Container(
                  width: 148,
                  height: 134,
                  margin: const EdgeInsets.only(top: 32),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ilustration-login.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 47,
                ),
                Text(
                  'Silahkan Masukkan dengan nomor telkomsel kamu',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                //NOTE: TextFormField
                CustomTextFormField(
                  controller: _nomorHpController,
                  title: 'Nomor HP',
                  hintText: 'Cth. 0812901xxxx',
                ),
                //NOTE: Private Policy & Terms of Service
                Row(
                  children: [
                    Icon(
                      Icons.check_box,
                      color: kRedColor,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: 'Saya menyetujui ',
                          style: blackTextStyle,
                          children: [
                            TextSpan(
                              text: 'syarat',
                              style: redTextStyle,
                            ),
                            TextSpan(
                              text: ', ',
                              style: blackTextStyle,
                            ),
                            TextSpan(
                              text: 'ketentuan ',
                              style: redTextStyle,
                            ),
                            TextSpan(
                              text: 'dan ',
                              style: blackTextStyle,
                            ),
                            TextSpan(
                              text: 'privasi ',
                              style: redTextStyle,
                            ),
                            TextSpan(
                              text: 'Telkomsel',
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                //NOTE: Login Button
                (_isEmptyNomorHp)
                    ? CustomButton(
                        title: 'MASUK',
                        backgroundColor: kRedColor,
                        onPressed: () {
                          setState(() {
                            _isLoading = true;
                          });
                          _nomorHpController.clear();
                          Timer(
                            const Duration(seconds: 3),
                            () {
                              Navigator.pushNamed(context, '/verifikasi');
                              setState(() {
                                _isLoading = false;
                              });
                            },
                          );
                        },
                      )
                    : (_isLoading)
                        ? CustomButton(
                            title: 'LOADING',
                            backgroundColor: kGreyColor,
                            onPressed: () {},
                          )
                        : CustomButton(
                            title: 'MASUK',
                            backgroundColor: kGreyColor,
                            onPressed: () {},
                          ),
                const SizedBox(
                  height: 16,
                ),
                //NOTE: Atau dengan akun lain
                Center(
                  child: Text(
                    'Atau masuk dengan',
                    style: greyDarkTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
                //NOTE: Facebook & Twitter
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                    bottom: 166,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButtonIcon(
                        title: 'Facebook',
                        icon: 'assets/icon/icon-facebook.png',
                        borderColor: kBlueDarkColor,
                      ),
                      const SizedBox(
                        width: 21,
                      ),
                      CustomButtonIcon(
                        title: 'Twitter',
                        icon: 'assets/icon/icon-twitter.png',
                        borderColor: kBlueColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
