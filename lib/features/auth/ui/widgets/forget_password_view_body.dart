import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/functions/show_snak_bar.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/auth/logic/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/on_boarding/ui/widgets/custom_button.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: SafeArea(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  spacing: 10.h,
                  children: [
                    Image.asset(
                      Assets.imagesLogo2,
                      height: 139.h,
                      width: 175.w,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Food',
                            style: AppStyles.black22.copyWith(
                              fontSize: 40.sp,
                              color: AppColors.primaryColorLight,
                            ),
                          ),
                          TextSpan(
                            text: 'Ninja',
                            style: AppStyles.black22.copyWith(
                              fontSize: 40.sp,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text('Forget Password!', style: AppStyles.black20),

                    CustomTextFormField(
                      controller: _emailController,

                      prefixIcon: Transform.scale(
                        scale: 0.5,
                        child: Image.asset(
                          Assets.imagesMessage,
                          width: 24.w,
                        ),
                      ),
                      validator: (p0) {
                        if (p0 == null || p0.isEmpty) {
                          return 'Enter your email address';
                        }
                        return null;
                      },

                      hintText: 'Enter your email address',
                    ),
                    BlocConsumer<ResetPassCubit, ResetPassState>(
                      listener: (context, state) {
                        if (state is ResetPassSuccess) {
                          showSnakBar(context, message: 'check your email');
                          Navigator.pop(context);
                        } else if (state is ResetPassError) {
                          showSnakBar(context, message: state.errorMessage);
                        }
                      },
                      builder: (context, state) {
                        return CustomButton(
                          isLoading: state is ResetPassLoading,
                          buttonText: 'submit',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              context.read<ResetPassCubit>().resetPassword(
                                email: _emailController.text,
                              );
                            } else {
                              setState(() {
                                _autovalidateMode = AutovalidateMode.always;
                              });
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
