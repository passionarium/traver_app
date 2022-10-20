import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/widgets/components/button.dart';
import '../../../../style/colors.dart';
import '../../../../style/typography.dart';
import 'verification_page.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<PasswordPage> {
  final TextEditingController _userPasswordController = TextEditingController();
  bool _passwordVisible = false;
  final bool isSelected = false;

  @override
  Widget build(final BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: TraverColors.blackDefault,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.current.create_your_account,
                      style: TraverTypography.headLine500(
                          color: TraverColors.blackLight400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      S.current.create_a_password,
                      style: TraverTypography.headLine800(),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    TextField(
                      controller: _userPasswordController,
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: TraverColors.brandDefault),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: S.current.password,
                        labelStyle: TraverTypography.BodyText100Regular(
                            color: TraverColors.brandDefault),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: TraverColors.blackDark900,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      S.current.your_password_must_include,
                      textAlign: TextAlign.justify,
                      style: TraverTypography.BodyText100Regular(
                          color: TraverColors.blackLight300),
                    ),
                    const Spacer(),
                    TraverPrimaryButton(
                      size: ButtonSize.large,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (final context) =>
                                const VerificationPage()));
                      },
                      text: S.current.verification,
                      isDisabled: false,
                      isIconOnly: false,
                    )
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
