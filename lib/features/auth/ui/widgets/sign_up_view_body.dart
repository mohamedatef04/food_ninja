import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/functions/show_snak_bar.dart';
import 'package:food_delivery_app/core/theme/app_colors.dart';
import 'package:food_delivery_app/core/theme/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/features/auth/logic/cubits/sign_up_cubit.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/agree_to_conditions_widget.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/already_have_an_account_widget.dart';
import 'package:food_delivery_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/on_boarding/ui/widgets/custom_button.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
                  Image.asset(Assets.imagesLogo2, height: 139.h, width: 175.w),
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

                  Text('Sign Up For Free ', style: AppStyles.black20),

                  CustomTextFormField(
                    prefixIcon: Transform.scale(
                      scale: 0.5,
                      child: Image.asset(
                        Assets.imagesUser,
                        width: 10.w,
                      ),
                    ),
                    hintText: 'Name',
                  ),
                  CustomTextFormField(
                    prefixIcon: Transform.scale(
                      scale: 0.5,
                      child: Image.asset(
                        Assets.imagesMessage,
                        height: 10.h,
                      ),
                    ),
                    hintText: 'Email',
                  ),
                  CustomTextFormField(
                    prefixIcon: Transform.scale(
                      scale: 0.5,
                      child: Image.asset(
                        Assets.imagesLock,
                        height: 10.h,
                      ),
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                  ),

                  const AgreeToConditionsWidget(),

                  BlocConsumer<SignUpCubit, SignUpState>(
                    listener: (context, state) {
                      if (state is SignUpSuccessState) {
                        showSnakBar(
                          context,
                          message: 'Account Created Successfully',
                        );
                      } else if (state is SignUpFailureState) {
                        showSnakBar(
                          context,
                          message: state.errorMessage,
                        );
                      }
                    },
                    builder: (context, state) {
                      return CustomButton(
                        isLoading: state is SignUpLoadingState,
                        buttonText: 'Create Account',
                        onTap: () {},
                      );
                    },
                  ),

                  const AlreadyHaveAnAccountWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
