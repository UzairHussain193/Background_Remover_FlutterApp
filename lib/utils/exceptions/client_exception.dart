

class HkClientException {
  static String handle(String message) {
    return _parseErrorMessage(message);
  }

  static String _parseErrorMessage(String? errorMessage) {
    if (errorMessage?.contains('Connection refused') ?? false) {
      return 'Connection Refused - Unable to establish a connection to the server.';
    } else if (errorMessage?.contains('Connection timed out') ?? false) {
      return 'Connection Timed Out - The connection to the server timed out.';
    } else if (errorMessage?.contains('Invalid certificate') ?? false) {
      return 'Invalid Certificate - The server certificate is invalid.';
    } else if (errorMessage?.contains('SSL handshake failed') ?? false) {
      return 'SSL Handshake Failed - The SSL handshake with the server failed.';
    } else if (errorMessage?.contains('Connection reset') ?? false) {
      return 'Connection Reset - The connection was reset by the server.';
    } else if (errorMessage?.contains('Proxy server failed') ?? false) {
      return 'Proxy Server Failed - The proxy server failed to establish a connection.';
    } else if (errorMessage?.contains('Network unreachable') ?? false) {
      return 'Network Unreachable - The network is unreachable.';
    } else if (errorMessage?.contains('Host not found') ?? false) {
      return 'Host Not Found - The host could not be found.';
    } else if (errorMessage?.contains('SocketException') ?? false) {
      return 'Socket Exception - A socket exception occurred.';
    } else {
      return 'An error occurred. Please try again later.';
    }
  }

}
