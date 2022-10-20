import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/widgets/components/button.dart';
import '../../../../style/colors.dart';
import '../../../../style/typography.dart';
import 'email_page.dart';

class FullNamePage extends StatefulWidget {
  const FullNamePage({super.key});

  @override
  State<FullNamePage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<FullNamePage> {
  final TextEditingController _userFirstNameController =
      TextEditingController();
  final TextEditingController _userLastNameController = TextEditingController();

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      S.current.your_name,
                      style: TraverTypography.headLine800(),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    TextField(
                      controller: _userFirstNameController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: TraverColors.brandDefault),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: S.current.first_name,
                        labelStyle: TraverTypography.BodyText100Regular(
                            color: TraverColors.brandDefault),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: _userLastNameController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: TraverColors.brandDefault),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: S.current.last_name,
                        labelStyle: TraverTypography.BodyText100Regular(
                            color: TraverColors.brandDefault),
                      ),
                    ),
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
                              builder: (final context) => const EmailPage(),
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
