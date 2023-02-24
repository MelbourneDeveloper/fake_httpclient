// ignore_for_file: strict_raw_type

import 'dart:convert';
import 'dart:io';

class FakeHttpClientRequest implements HttpClientRequest {
  FakeHttpClientRequest(
    this.uri,
    this.method,
    this.respond, {
    //TODO: The request body should flow through here
    //Need to investigate why the client doesn't pass
    //that through
    this.contentLength = 0,
    this.bufferOutput = false,
    this.followRedirects = false,
    this.maxRedirects = 5,
    this.persistentConnection = true,
  });

  @override
  final Uri uri;

  @override
  final String method;

  @override
  int contentLength;

  bool _isClosed = false;

  bool get isClosed => _isClosed;

  @override
  bool followRedirects;

  @override
  int maxRedirects;

  @override
  bool persistentConnection;

  @override
  final bool bufferOutput;

  final Future<HttpClientResponse> Function(HttpClientRequest request) respond;

  @override
  Encoding encoding = Encoding.getByName('utf-8')!;

  @override
  void abort([Object? exception, StackTrace? stackTrace]) {
    // TODO: implement abort
  }

  @override
  void add(List<int> data) {
    // TODO: implement add
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    // TODO: implement addError
  }

  @override
  Future addStream(Stream<List<int>> stream) async {
    // TODO: implement addStream
    //throw UnimplementedError();
  }

  @override
  Future<HttpClientResponse> close() async {
    final httpClientResponse = await respond(this);
    _isClosed = true;
    return httpClientResponse;
  }

  @override
  // TODO: implement connectionInfo
  HttpConnectionInfo? get connectionInfo => throw UnimplementedError();

  @override
  // TODO: implement cookies
  List<Cookie> get cookies => throw UnimplementedError();

  @override
  // TODO: implement done
  Future<HttpClientResponse> get done => throw UnimplementedError();

  @override
  Future flush() {
    // TODO: implement flush
    throw UnimplementedError();
  }

  @override
  // TODO: implement headers
  HttpHeaders get headers => throw UnimplementedError();

  @override
  void write(Object? object) {
    // TODO: implement write
  }

  @override
  void writeAll(Iterable objects, [String separator = '']) {
    // TODO: implement writeAll
  }

  @override
  void writeCharCode(int charCode) {
    // TODO: implement writeCharCode
  }

  @override
  void writeln([Object? object = '']) {
    // TODO: implement writeln
  }

  @override
  set bufferOutput(bool bufferOutput) {
    // ignore: parameter_assignments
    bufferOutput = bufferOutput;
  }
}
