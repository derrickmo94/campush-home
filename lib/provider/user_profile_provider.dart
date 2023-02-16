import 'package:flutter/cupertino.dart';

class ProfileProvider with ChangeNotifier {
  bool _editEnabled = true;
  bool _fNameEdit = true;
  bool _mNameEdit = true;
  bool _lNameEdit = true;
  bool _phoneEdit = true;
  bool _instituteEdit = true;
  bool _nextofKeenEdit = true;
  bool _nextofKeenPhoneEdit = true;

  bool get editingStatus => _editEnabled;
  bool get fNameEditStatus => _fNameEdit;
  bool get mNameEditStatus => _mNameEdit;
  bool get lNameEditStatus => _lNameEdit;
  bool get phoneEditStatus => _phoneEdit;
  bool get instituteEditStatus => _instituteEdit;
  bool get nextofKeenEditStatus => _nextofKeenEdit;
  bool get nextofKeenPhoneEditStatus => _nextofKeenPhoneEdit;

  set fNameEditStatus(bool status) {
    _fNameEdit = status;
    notifyListeners();
  }

  set mNameEditStatus(bool status) {
    _mNameEdit = status;
    notifyListeners();
  }

  set lNameEditStatus(bool status) {
    _lNameEdit = status;
    notifyListeners();
  }

  set phoneEditStatus(bool status) {
    _phoneEdit = status;
    notifyListeners();
  }

  set instituteEditStatus(bool status) {
    _instituteEdit = status;
    notifyListeners();
  }

  set nextofKeenEditStatus(bool status) {
    _nextofKeenEdit = status;
    notifyListeners();
  }

  set nextofKeenPhoneEditStatus(bool status) {
    _nextofKeenPhoneEdit = status;
    notifyListeners();
  }

  set editingStatus(bool editingStatus) {
    _editEnabled = editingStatus;
    notifyListeners();
  }
}
