import 'dart:io';

class FakeHttpHeaders extends HttpHeaders {
  @override
  List<String>? operator [](String name) {
    // TODO: implement []
    throw UnimplementedError();
  }

  @override
  void add(String name, Object value, {bool preserveHeaderCase = false}) {
    // TODO: implement add
  }

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  void forEach(void Function(String name, List<String> values) action) {
    // TODO: implement forEach
  }

  @override
  void noFolding(String name) {
    // TODO: implement noFolding
  }

  @override
  void remove(String name, Object value) {
    // TODO: implement remove
  }

  @override
  void removeAll(String name) {
    // TODO: implement removeAll
  }

  @override
  void set(String name, Object value, {bool preserveHeaderCase = false}) {
    // TODO: implement set
  }

  @override
  String? value(String name) {
    // TODO: implement value
    throw UnimplementedError();
  }
}
