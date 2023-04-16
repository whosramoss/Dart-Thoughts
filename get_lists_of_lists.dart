void main {
  getListOfLists(['a', 'b','c', 'd','e'], 2);
  getListOfLists(['a', 'b','c', 'd','e'], 4);
  getListOfLists(['a', 'b','c', 'd','e'], 3);
}

List<List<String>> getListOfLists(List<String> lst1, int limit) {
 for (int i = 0; i < lst1.length; i += limit) {
    int endIndex = i + limit;
    List<String> subList = lst1.sublist(i, endIndex > lst1.length ? lst1.length : endIndex);
    result.add(subList);
  }
  return result;
}
