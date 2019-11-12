// Challenge
// Flatten a list
// Create a function that takes a list. This list can have all kinds of items, even other lists. The function should return a single, flat, one-dimensional, list with all elements. Here are the conditions:
//
// - If the item is a list, include each item in it and the following still apply:
// - If the item is a Function, include the function's output, not the function itself.
// - If the item is a plain Object or a Primitive, include it as is.

// Example
// flattenList([1, "2", [3, function () { return 4; }, [ "five" ], "six", true, { prop: "val" }]])
//  ➞ [1, "2", 3, 4, "five", "six", true, { prop: "val" }]

List<Object> flattenList(List list, List newList) {
//  newList.addAll(list);
  for (var item in list) {
    if (item is List) {
      flattenList(item, newList);
    } else if (item is Function) {
      (item() is List) ? flattenList(item(), newList) : newList.add(item());
    } else {
      newList.add(item);
    }
  }
  return newList;
}

main() {
  print(flattenList([
    [
      2,
      2,
      [2]
    ]
  ], []));

  print((() => 4));
}
