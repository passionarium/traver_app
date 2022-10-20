import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/widgets/components/button.dart';
import '../../../../style/colors.dart';
import '../../../../style/typography.dart';
import 'password_page.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<EmailPage> {
  bool isSelected = true;
  final TextEditingController _userEmailController = TextEditingController();

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
                      S.current.and_your_email,
                      style: TraverTypography.headLine800(),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    TextField(
                      controller: _userEmailController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: TraverColors.brandDefault),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: S.current.email,
                        labelStyle: TraverTypography.BodyText100Regular(
                            color: TraverColors.brandDefault),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 4,
                          child: Text(
                            S.current
                                .received_marketing_and_policy_communucation_from_traver_and_its_partners,
                            style: TraverTypography.BodyText100Regular(),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: TraverColors.blackLight300, width: 1),
                              borderRadius: BorderRadius.circular(20.0),
                              color: isSelected
                                  ? Colors.transparent
                                  : Colors.transparent,
                            ),
                            child: CupertinoSwitch(
                                thumbColor: isSelected
                                    ? TraverColors.blackDefault
                                    : TraverColors.blackLight100,
                                trackColor: TraverColors.white,
                                activeColor: TraverColors.white,
                                value: isSelected,
                                onChanged: (final bool value) {
                                  setState(() {
                                    isSelected = value;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Expanded(
                      // when SliverFillRemaining shrinks from keyboard -
                      // leave some space
                      child: SizedBox(height: 20),
                    ),
                    TraverPrimaryButton(
                        size: ButtonSize.large,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (final context) {
                                return const PasswordPage();
                              },
                            ),
                          );
                        },
                        text: S.current.input_email,
                        isDisabled: false,
                        isIconOnly: false)
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
