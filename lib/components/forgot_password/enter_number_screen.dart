import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:get_services/components/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:get_services/components/forgot_password/enter_new_password_screen.dart';
import 'package:get_services/gen/assets.gen.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:get_services/utils/cutom_widgets/custom_button.dart';
import 'package:get_services/utils/cutom_widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EnterNumberScreen extends StatefulWidget {
  const EnterNumberScreen({super.key});

  @override
  State<EnterNumberScreen> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
  late ForgotPasswordBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<ForgotPasswordBloc>();
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
              child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "forgotPasswordTitle".tr(),
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
                          "forgotPasswordDescription".tr(),
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
                                context.read<ForgotPasswordBloc>().add(
                                    ForgotPasswordEvent.updateCountry(
                                        countryData));
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
                                  context.read<ForgotPasswordBloc>().add(
                                      ForgotPasswordEvent.updatePhoneNumber(
                                          rawPhoneNumber));
                                },
                                hintText: "enterPhoneNumber"),
                          ),
                        ],
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
                                  title: 'submit',
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const EnterNewPasswordScreen()));
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
