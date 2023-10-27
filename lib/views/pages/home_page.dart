import 'package:awesome_card/awesome_card.dart';
import 'package:card_stack_widget/card_stack_widget.dart';
import 'package:credit_card_app/controllers/card_controller.dart';
import 'package:credit_card_app/core/value/color.dart';
import 'package:credit_card_app/views/pages/credit_card_page.dart';
import 'package:credit_card_app/views/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final CardController cardController = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Obx(
            () => cardController.cardList.isEmpty
                ? const Center(child: Text('Empty'))
                : SizedBox(
                  
                  child: CardStackWidget(
                      opacityChangeOnDrag: true,
                      swipeOrientation: CardOrientation.both,
                      cardDismissOrientation: CardOrientation.both,
                      positionFactor: 1.5,
                      scaleFactor: 2,
                      
                      alignment: Alignment.center,
                      animateCardScale: true,
                      dismissedCardDuration: const Duration(milliseconds: 150),
                      cardList: cardController.cardListWidget,
                    ),
                ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(CreditCardPage());
          },
          backgroundColor: LightColors.primary,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
