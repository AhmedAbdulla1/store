import 'dart:async';
import 'package:rxdart/rxdart.dart';

class CartViewModel extends CartInput with  CartOutput{
  StreamController<bool> checkBoxStreamController =BehaviorSubject<bool>();
  StreamController<int> quantityStreamController =BehaviorSubject<int>();

  @override
  Sink<bool> get inputCheckBox => checkBoxStreamController.sink;

  @override
  Stream<bool> get outputCheckBox => checkBoxStreamController.stream.map((value) => value);

  @override
  setCheckboxValue(bool? value) {
    checkBoxStreamController.add(value??false);
  }

  @override
  Sink<int> get inputQuantity => quantityStreamController.sink ;

  @override
  // TODO: implement outputQuantity
  Stream<int> get outputQuantity =>quantityStreamController.stream.map((quantity) => quantity);

  @override
  setQuantity(int quantity) {
   quantityStreamController.add(quantity);
  }

}



abstract class CartInput{
  setCheckboxValue(bool? value);
  setQuantity(int quantity);
  Sink<bool> get inputCheckBox;
  Sink<int> get inputQuantity;
}
abstract class CartOutput{
  Stream<bool> get outputCheckBox;
  Stream<int> get outputQuantity;
}