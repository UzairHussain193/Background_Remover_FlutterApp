import 'dart:io';

class HkSocketException implements Exception {
  final String message;

  HkSocketException(this.message);

  @override
  String toString() => message;

  factory HkSocketException.fromOsError(OSError osError) {
    switch (osError.message.toLowerCase()) {
      case 'connection refused':
        return HkSocketException('Connection refused. Please check the server settings.');
      case 'connection reset by peer':
        return HkSocketException('Connection reset by peer. Please try again.');
      case 'network unreachable':
        return HkSocketException('Network unreachable. Please check your internet connection.');
      case 'host unreachable':
        return HkSocketException('Host unreachable. Please check the server address.');
      case 'connection timed out':
        return HkSocketException('Connection timed out. Please try again later.');
      case 'address already in use':
        return HkSocketException('Address already in use. Please use a different port.');
      case 'operation now in progress':
        return HkSocketException('Operation now in progress. Please try again later.');
      case 'no route to host':
        return HkSocketException('No route to host. Please check your network configuration.');
      default:
        return HkSocketException('Check your internet connection');
    }
  }
}
