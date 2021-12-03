part of 'saved_cubit.dart';

class SavedState {
  List<Product> savedItems;

  SavedState({this.savedItems = const []});
  SavedState copyWith({List<Product>? savedItems}) {
    return SavedState(savedItems: savedItems ?? this.savedItems);
  }

  bool isAdded(String id) {
    var index = savedItems.indexWhere((element) => element.id == id);

    if (index == -1) {
      return false;
    }
    return true;
  }
}
