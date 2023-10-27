import 'package:credit_card_app/controllers/card_controller.dart';
import 'package:credit_card_app/core/utils/card_utils.dart';
import 'package:credit_card_app/core/value/color.dart';
import 'package:credit_card_app/core/value/dimens.dart';
import 'package:credit_card_app/gen/assets.gen.dart';
import 'package:credit_card_app/models/credit_card_model.dart';
import 'package:credit_card_app/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CreditCardPage extends StatelessWidget {
  CreditCardPage({Key? key}) : super(key: key);
  final CardController cardController = Get.find<CardController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: LightColors.background,
        appBar: AppBar(
          title: const Text(
            'New Card',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          centerTitle: true,
          backgroundColor: LightColors.background,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: AppDimens.large),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: cardController.cardNumberTextEdit,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {},
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                        CardNumberInputFormatter(),
                      ],
                      decoration: InputDecoration(
                        label: const Text('Card Number'),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ImageIcon(
                            Image.asset(Assets.icons.browser.path).image,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Obx(() => SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  CardUtils.getCardType(
                                      cardController.cardType.value),
                                ),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: AppDimens.large),
                      child: TextFormField(
                        controller: cardController.cardNameTextEdit,
                        decoration: InputDecoration(
                          label: const Text('Card Name'),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: ImageIcon(
                              Image.asset(Assets.icons.user.path).image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: cardController.cvv2TextEdit,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              label: const Text('CVV2'),
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: ImageIcon(
                                  Image.asset(Assets.icons.cvv.path).image,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: cardController.dateTextEdit,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(5),
                              FilteringTextInputFormatter.digitsOnly,
                              CardMonthInputFormatter()
                            ],
                            decoration: InputDecoration(
                              label: const Text('YY/MM'),
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: ImageIcon(
                                  Image.asset(Assets.icons.calendar.path).image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              cardController.addCard();
            },
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();
    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;
      if (index % 4 == 0 && inputData.length != index) {
        buffer.write("  ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(
        offset: buffer.toString().length,
      ),
    );
  }
}
