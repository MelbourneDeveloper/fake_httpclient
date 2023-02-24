// ignore_for_file: strict_raw_type

import 'dart:async';
import 'dart:io';

import 'fake_httpheaders.dart';

class FakeHttpClientResponse implements HttpClientResponse {
  FakeHttpClientResponse(
    this._statusCode,
    this._contentLength,
    Stream<List<int>> Function()? body, {
    HttpHeaders? headers,
    bool? isRedirect,
    bool? persistentConnection,
    String? reasonPhrase,
  })  : _headers = headers ?? FakeHttpHeaders(),
        body = body ?? Stream<List<int>>.empty,
        _isRedirect = isRedirect ?? false,
        _reasonPhrase = reasonPhrase ?? '',
        _persistentConnection = persistentConnection ?? false;

  FakeHttpClientResponse.fromBodyString(String body, [int statusCode = 200])
      : this(statusCode, body.length, () => Stream.value(body.codeUnits));

  final HttpHeaders _headers;
  final int _statusCode;
  final String _reasonPhrase;
  final bool _isRedirect;
  final bool _persistentConnection;
  final int _contentLength;

  //TODO: this is probably not sufficient. We probably need
  //some parameters
  final Stream<List<int>> Function() body;

  @override
  Future<bool> any(bool Function(List<int> element) test) {
    // TODO: implement any
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> asBroadcastStream({
    void Function(StreamSubscription<List<int>> subscription)? onListen,
    void Function(StreamSubscription<List<int>> subscription)? onCancel,
  }) {
    // TODO: implement asBroadcastStream
    throw UnimplementedError();
  }

  @override
  Stream<E> asyncExpand<E>(Stream<E>? Function(List<int> event) convert) {
    // TODO: implement asyncExpand
    throw UnimplementedError();
  }

  @override
  Stream<E> asyncMap<E>(FutureOr<E> Function(List<int> event) convert) {
    // TODO: implement asyncMap
    throw UnimplementedError();
  }

  @override
  Stream<R> cast<R>() {
    // TODO: implement cast
    throw UnimplementedError();
  }

  @override
  // TODO: implement certificate
  X509Certificate? get certificate => throw UnimplementedError();

  @override
  // TODO: implement compressionState
  HttpClientResponseCompressionState get compressionState =>
      throw UnimplementedError();

  @override
  // TODO: implement connectionInfo
  HttpConnectionInfo? get connectionInfo => throw UnimplementedError();

  @override
  Future<bool> contains(Object? needle) {
    // TODO: implement contains
    throw UnimplementedError();
  }

  @override
  int get contentLength => _contentLength;

  @override
  // TODO: implement cookies
  List<Cookie> get cookies => throw UnimplementedError();

  @override
  Future<Socket> detachSocket() {
    // TODO: implement detachSocket
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> distinct([
    bool Function(List<int> previous, List<int> next)? equals,
  ]) {
    // TODO: implement distinct
    throw UnimplementedError();
  }

  @override
  Future<E> drain<E>([E? futureValue]) {
    // TODO: implement drain
    throw UnimplementedError();
  }

  @override
  Future<List<int>> elementAt(int index) {
    // TODO: implement elementAt
    throw UnimplementedError();
  }

  @override
  Future<bool> every(bool Function(List<int> element) test) {
    // TODO: implement every
    throw UnimplementedError();
  }

  @override
  Stream<S> expand<S>(Iterable<S> Function(List<int> element) convert) {
    // TODO: implement expand
    throw UnimplementedError();
  }

  @override
  // TODO: implement first
  Future<List<int>> get first async => [50, 50, 50];

  @override
  Future<List<int>> firstWhere(
    bool Function(List<int> element) test, {
    List<int> Function()? orElse,
  }) {
    // TODO: implement firstWhere
    throw UnimplementedError();
  }

  @override
  Future<S> fold<S>(
    S initialValue,
    S Function(S previous, List<int> element) combine,
  ) {
    // TODO: implement fold
    throw UnimplementedError();
  }

  @override
  Future forEach(void Function(List<int> element) action) {
    // TODO: implement forEach
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> handleError(
    Function onError, {
    // ignore: avoid_annotating_with_dynamic
    bool Function(dynamic error)? test,
  }) =>
      //TODO: Fill this out so we can handle errors
      body();

  @override
  HttpHeaders get headers => _headers;

  @override
  // TODO: implement isBroadcast
  bool get isBroadcast => throw UnimplementedError();

  @override
  Future<bool> get isEmpty async => (await _first()).isEmpty;

  Future<List<int>> _first() async {
    final stream = body();
    final first = await stream.first;
    return first;
  }

  @override
  bool get isRedirect => _isRedirect;

  @override
  Future<String> join([String separator = '']) {
    // TODO: implement join
    throw UnimplementedError();
  }

  @override
  // TODO: implement last
  Future<List<int>> get last => throw UnimplementedError();

  @override
  Future<List<int>> lastWhere(
    bool Function(List<int> element) test, {
    List<int> Function()? orElse,
  }) {
    // TODO: implement lastWhere
    throw UnimplementedError();
  }

  //Do we need to read the stream? Could we just use the content length?
  @override
  Future<int> get length async => (await _first()).length;

  @override
  StreamSubscription<List<int>> listen(
    void Function(List<int> event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    // TODO: implement listen
    throw UnimplementedError();
  }

  @override
  Stream<S> map<S>(S Function(List<int> event) convert) {
    // TODO: implement map
    throw UnimplementedError();
  }

  @override
  bool get persistentConnection => _persistentConnection;

  @override
  Future pipe(StreamConsumer<List<int>> streamConsumer) {
    // TODO: implement pipe
    throw UnimplementedError();
  }

  @override
  String get reasonPhrase => _reasonPhrase;

  @override
  Future<HttpClientResponse> redirect([
    String? method,
    Uri? url,
    bool? followLoops,
  ]) {
    // TODO: implement redirect
    throw UnimplementedError();
  }

  @override
  // TODO: implement redirects
  List<RedirectInfo> get redirects => throw UnimplementedError();

  @override
  Future<List<int>> reduce(
    List<int> Function(List<int> previous, List<int> element) combine,
  ) {
    // TODO: implement reduce
    throw UnimplementedError();
  }

  @override
  // TODO: implement single
  Future<List<int>> get single => throw UnimplementedError();

  @override
  Future<List<int>> singleWhere(
    bool Function(List<int> element) test, {
    List<int> Function()? orElse,
  }) {
    // TODO: implement singleWhere
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> skip(int count) {
    // TODO: implement skip
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> skipWhile(bool Function(List<int> element) test) {
    // TODO: implement skipWhile
    throw UnimplementedError();
  }

  @override
  int get statusCode => _statusCode;

  @override
  Stream<List<int>> take(int count) {
    // TODO: implement take
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> takeWhile(bool Function(List<int> element) test) {
    // TODO: implement takeWhile
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> timeout(
    Duration timeLimit, {
    void Function(EventSink<List<int>> sink)? onTimeout,
  }) {
    // TODO: implement timeout
    throw UnimplementedError();
  }

  @override
  Future<List<List<int>>> toList() {
    // TODO: implement toList
    throw UnimplementedError();
  }

  @override
  Future<Set<List<int>>> toSet() {
    // TODO: implement toSet
    throw UnimplementedError();
  }

  @override
  Stream<S> transform<S>(StreamTransformer<List<int>, S> streamTransformer) {
    // TODO: implement transform
    throw UnimplementedError();
  }

  @override
  Stream<List<int>> where(bool Function(List<int> event) test) {
    // TODO: implement where
    throw UnimplementedError();
  }
}
