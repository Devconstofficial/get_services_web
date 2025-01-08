import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import 'package:get_services/components/forgot_password/enter_number_screen.dart';
import 'package:get_services/components/login/bloc/login_bloc.dart';
import 'package:get_services/gen/assets.gen.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:get_services/utils/cutom_widgets/custom_button.dart';
import 'package:get_services/utils/cutom_widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc loginBloc;
  @override
  void initState() {
    super.initState();
    loginBloc = context.read<LoginBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                Assets.images.bgImage.path,
                height: double.infinity,
                width: getWidth(756),
                fit: BoxFit.cover,
              ),
              Image.asset(
                Assets.images.circleLogo.path,
                height: getHeight(570),
                width: getWidth(609),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(67)),
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "welcomeBack".tr(),
                          style: GoogleFonts.robotoFlex(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(16)),
                      Center(
                        child: Text(
                          "loginToAccess".tr(),
                          style: GoogleFonts.robotoFlex(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: greyShade1Color,
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(48)),
                      Text(
                        "phoneNumber".tr(),
                        style: GoogleFonts.robotoFlex(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getHeight(8)),
                      Row(
                        children: [
                          SizedBox(
                            width: getWidth(180),
                            child: CountryDropdown(
                              printCountryName: true,
                              onCountrySelected:
                                  (PhoneCountryData countryData) {
                                context
                                    .read<LoginBloc>()
                                    .add(LoginEvent.updateCountry(countryData));
                              },
                            ),
                          ),
                          SizedBox(width: getWidth(15)),
                          Expanded(
                            child: CustomTextField(
                                textInputType: TextInputType.number,
                                controller: state.phoneNumberController,
                                inputFormatters: [
                                  PhoneInputFormatter(
                                    allowEndlessPhone: false,
                                    defaultCountryCode:
                                        state.country.countryCode,
                                  )
                                ],
                                onChanged: (value) {
                                  final rawPhoneNumber =
                                      '+${state.country.phoneCode}${toNumericString(value)}';
                                  context.read<LoginBloc>().add(
                                      LoginEvent.updatePhoneNumber(
                                          rawPhoneNumber));
                                },
                                hintText: "enterPhoneNumber"),
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(24)),
                      Text(
                        "password".tr(),
                        style: GoogleFonts.robotoFlex(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getHeight(8)),
                      CustomTextField(
                        controller: state.passwordController,
                        isObscure: state.isPasswordObscured,
                        hintText: "enterPassword",
                        suffix: GestureDetector(
                          onTap: () {
                            context.read<LoginBloc>().add(
                                const LoginEvent.togglePasswordVisibility());
                          },
                          child: Icon(
                            state.isPasswordObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: greyShade1Color,
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(8)),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EnterNumberScreen()));
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "forgotPassword".tr(),
                            style: GoogleFonts.robotoFlex(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(32)),
                      state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              ),
                            )
                          : Center(
                              child: CustomButton(
                                  title: 'logIn',
                                  onTap: () {
                                    context
                                        .read<LoginBloc>()
                                        .add(LoginEvent.login(context));
                                  }),
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
