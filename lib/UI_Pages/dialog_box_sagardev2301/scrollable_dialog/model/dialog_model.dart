// Use this custom ListItem in List to show in scrollable dialog box.
class ListItem<T> {
  bool isSelected =
      false; // Variable to check if current item isSelected or not
  T data; //Data of the user
  ListItem(this.data); // Constructor to store the data
}
