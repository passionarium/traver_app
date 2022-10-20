import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

import '../../../../core/presentation/widgets/components/button.dart';
import '../../../../style/colors.dart';
import '../../../../style/typography.dart';
import '../widgets/verification_code_field.dart';
import 'success_page.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<VerificationPage> {
  final TextEditingController _digitController = TextEditingController();

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
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
        child: CustomScrollView(slivers: [
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
                  S.current.otp_verification,
                  style: TraverTypography.headLine800(),
                ),
                const SizedBox(
                  height: 70,
                ),
                VerificationCodeField(
                  controller: _digitController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.current.send_code_reload_in,
                      style: TraverTypography.BodyText200Regular(),
                    ),
                    Text('03:23', style: TraverTypography.BodyText200Regular())
                  ],
                ),
                const Spacer(),
                TraverPrimaryButton(
                    size: ButtonSize.large,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (final context) =>
                              const SuccessRegisterPage()));
                    },
                    text: S.current.submit,
                    isDisabled: false,
                    isIconOnly: false)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
