import 'package:flutter/material.dart';
import 'package:my_tsel/shared/theme.dart';
import 'package:my_tsel/widgets/custom_text_form_field.dart';

class VerifikasiPage extends StatefulWidget {
  const VerifikasiPage({Key? key}) : super(key: key);

  @override
  State<VerifikasiPage> createState() => _VerifikasiPageState();
}

class _VerifikasiPageState extends State<VerifikasiPage> {

  final TextEditingController _kodeVerifikasiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //NOTE: Top Bar
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 26,
                  height: 26,
                  margin: const EdgeInsets.only(
                    top: 24,
                    bottom: 28,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon/icon-chevron-left.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //NOTE: Logo
              Container(
                width: 113,
                height: 113,
                margin: const EdgeInsets.only(bottom: 32),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ilustration-verifikasi.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Masukkan kode unik yang kami kirim',
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                  text: 'Silahkan periksa SMS kamu dan masukkan kode unik yang kami kirimkan ke ',
                  style: blackTextStyle,
                  children: [
                    TextSpan(
                      text: '081290112333',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextFormField(
                controller: _kodeVerifikasiController,
                title: 'Kode Unik',
                hintText: 'Cth. q5TsgH***',
              ),
              RichText(
                text: TextSpan(
                  text: 'Tidak menerima SMS ? ',
                  style: blackTextStyle,
                  children: [
                    TextSpan(
                      text: 'Kirim Ulang',
                      style: redTextStyle
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
