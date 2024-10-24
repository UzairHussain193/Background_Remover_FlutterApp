class HkTimeoutException implements Exception {
  final String message;

  HkTimeoutException(this.message);

  factory HkTimeoutException.fromDuration(Duration duration) {
    return HkTimeoutException('The operation timed out after ${duration.inSeconds} seconds.');
  }

  @override
  String toString() {
    return 'Timeout: $message';
  }
}
