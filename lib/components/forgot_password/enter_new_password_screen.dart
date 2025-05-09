import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_services/components/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:get_services/gen/assets.gen.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:get_services/utils/cutom_widgets/custom_button.dart';
import 'package:get_services/utils/cutom_widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EnterNewPasswordScreen extends StatefulWidget {
  const EnterNewPasswordScreen({super.key});

  @override
  State<EnterNewPasswordScreen> createState() => _EnterNewPasswordScreenState();
}

class _EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {
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
                          "enterNewPassword".tr(),
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
                          "newPasswordDescription".tr(),
                          style: GoogleFonts.robotoFlex(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: greyShade1Color,
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(48)),
                      Text(
                        "newPassword".tr(),
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
                        hintText: "enterNewPasswordPlaceholder",
                        suffix: GestureDetector(
                          onTap: () {
                            context.read<ForgotPasswordBloc>().add(
                                const ForgotPasswordEvent
                                    .togglePasswordVisibility());
                          },
                          child: Icon(
                            state.isPasswordObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: greyShade1Color,
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(24)),
                      Text(
                        "confirmNewPassword".tr(),
                        style: GoogleFonts.robotoFlex(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getHeight(8)),
                      CustomTextField(
                        controller: state.confirmPasswordController,
                        isObscure: state.isConfirmPasswordObscured,
                        hintText: "confirmNewPasswordPlaceholder",
                        suffix: GestureDetector(
                          onTap: () {
                            context.read<ForgotPasswordBloc>().add(
                                const ForgotPasswordEvent
                                    .toggleConfirmPasswordVisibility());
                          },
                          child: Icon(
                            state.isConfirmPasswordObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: greyShade1Color,
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
                                  title: 'setNewPassword',
                                  onTap: () {
                                    context.read<ForgotPasswordBloc>().add(
                                        ForgotPasswordEvent.forgotPassword(
                                            context));
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
