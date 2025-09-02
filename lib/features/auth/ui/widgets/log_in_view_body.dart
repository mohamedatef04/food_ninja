import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/functions/show_snak_bar.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/auth/logic/cubits/log_in/log_in_cubit.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_dont_have_an_account_widget.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/forget_password_widget.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/google_sign_widget.dart';
import 'package:food_delivery_app/features/on_boarding/ui/widgets/custom_button.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  bool obscureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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

                    Text('Login To Your Account', style: AppStyles.black20),

                    CustomTextFormField(
                      controller: _emailController,
                      prefixIcon: Transform.scale(
                        scale: 0.5,
                        child: Image.asset(
                          Assets.imagesMessage,
                          height: 10.h,
                        ),
                      ),
                      hintText: 'Email',
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      controller: _passwordController,
                      obscureText: obscureText,
                      prefixIcon: Transform.scale(
                        scale: 0.5,
                        child: Image.asset(
                          Assets.imagesLock,
                          height: 10.h,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(
                          obscureText
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      hintText: 'Password',
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),

                    Text(
                      'or Continue With',
                      style: AppStyles.black12.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const GoogleSignWidget(),
                    const ForgetPasswordWidget(),
                    BlocConsumer<LogInCubit, LogInState>(
                      listener: (context, state) {
                        if (state is LogInSuccessState) {
                          _emailController.clear();
                          _passwordController.clear();
                        } else if (state is LogInErrorState) {
                          showSnakBar(context, message: state.errorMessage);
                        }
                      },
                      builder: (context, state) {
                        return CustomButton(
                          isLoading: state is LogInLoadingState,
                          buttonText: 'Login',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              context.read<LogInCubit>().logIn(
                                email: _emailController.text,
                                password: _passwordController.text,
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

                    const CustomDontHaveAnAccountWidget(),
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
