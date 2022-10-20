import 'package:flutter/material.dart';

class VerificationCodeField extends StatefulWidget {
  final bool autofocus;
  final TextEditingController? controller;

  static const int codeLength = 4;

  const VerificationCodeField({
    this.autofocus = false,
    this.controller,
    final Key? key,
  }) : super(key: key);

  @override
  State<VerificationCodeField> createState() => _VerificationCodeFieldState();
}

class _VerificationCodeFieldState extends State<VerificationCodeField> {
  final FocusNode focusNode = FocusNode();
  late TextEditingController controller;

  late ValueNotifier<String> notifier;

  @override
  void initState() {
    super.initState();
    notifier = ValueNotifier('');
    controller = widget.controller ?? TextEditingController();
    controller.addListener(textControllerListener);
  }

  @override
  void dispose() {
    controller.removeListener(textControllerListener);
    super.dispose();
  }

  void textControllerListener() {
    notifier.value = controller.text;
  }

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        focusNode.requestFocus();
      },
      child: AbsorbPointer(
        child: Stack(
          children: [
            Opacity(
              opacity: 0,
              child: TextFormField(
                autofocus: true,
                controller: controller,
                focusNode: focusNode,
                maxLength: 4,
                keyboardType: TextInputType.number,
              ),
            ),
            ValueListenableBuilder<String>(
                valueListenable: notifier,
                builder: (final _, final value, final __) {
                  return Row(
                    children: [
                      Expanded(
                        child: _CodeFieldItem(
                          digit: value.isNotEmpty ? value[0] : '',
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: _CodeFieldItem(
                            digit: value.length >= 2 ? value[1] : ''),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: _CodeFieldItem(
                            digit: value.length >= 3 ? value[2] : ''),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: _CodeFieldItem(
                            digit: value.length >= 4 ? value[3] : ''),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class _CodeFieldItem extends StatefulWidget {
  final String digit;

  const _CodeFieldItem({
    required this.digit,
    final Key? key,
  }) : super(key: key);

  @override
  State<_CodeFieldItem> createState() => __CodeFieldItemState();
}

class __CodeFieldItemState extends State<_CodeFieldItem> {
  @override
  Widget build(final BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(17.0),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.digit,
        ),
      ),
    );
  }
}
