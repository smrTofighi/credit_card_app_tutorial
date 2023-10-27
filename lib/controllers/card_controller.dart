import 'package:card_stack_widget/card_stack_widget.dart';
import 'package:credit_card_app/core/utils/card_utils.dart';
import 'package:credit_card_app/models/credit_card_model.dart';
import 'package:credit_card_app/models/type_model.dart';
import 'package:credit_card_app/views/pages/home_page.dart';
import 'package:credit_card_app/views/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardController extends GetxController {
  TextEditingController cardNumberTextEdit = TextEditingController();
  TextEditingController cardNameTextEdit = TextEditingController();
  TextEditingController cvv2TextEdit = TextEditingController();
  TextEditingController dateTextEdit = TextEditingController();
  RxList<CreditCardModel> cardList = RxList();
  RxList<CardModel> cardListWidget = RxList();

  RxString cardType = TypeModel.invalid.obs;
  @override
  void onInit() {
    cardNumberTextEdit.addListener(() {
      getCardTypeFrmNum();
    });
    super.onInit();
  }

  getCardTypeFrmNum() {
    if (cardNumberTextEdit.text.length <= 6) {
      String cardNum = CardUtils.getCleanedNumber(cardNumberTextEdit.text);
      var type = CardUtils.getCardTypeFrmNumber(cardNum);
      if (cardType.value != type) {
        cardType.value = type;
      }
    }
  }

  clearInput() {
    cardNumberTextEdit.text ='';
    cardNameTextEdit.text = '';
    cvv2TextEdit.text = '';
    dateTextEdit.text = '';
  }

  addCardWidget() {
    cardListWidget.add(
      CardModel(
        border: Border.all(color: Colors.transparent, width: 0),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        child: CreditCardWidget(
            cardNumber: cardNumberTextEdit.text,
            cardName: cardNameTextEdit.text,
            cardExpiry: dateTextEdit.text,
            cardType: cardType.value,
            cvv2: cvv2TextEdit.text),
      ),
    );
  }

  addCard() {
    addCardWidget();
    cardList.add(
      CreditCardModel(
        cardNumber: cardNumberTextEdit.text,
        cardName: cardNameTextEdit.text,
        cvv2: cvv2TextEdit.text,
        date: dateTextEdit.text,
        cardType: cardType.value,
      ),
    );
    clearInput();
    Get.off(HomePage());
  }
}
