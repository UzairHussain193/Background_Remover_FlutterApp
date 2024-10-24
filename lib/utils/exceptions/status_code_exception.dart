/// Exception class for handling various HTTP errors.
class HkHttpExceptions implements Exception {
  /// The associated error message.
  final String message;

  /// The HTTP status code.
  final int statusCode;

  /// Default constructor with a generic error message and status code.
  const HkHttpExceptions(this.statusCode, [this.message = 'An unexpected error occurred. Please try again.']);

  /// Create an exception from an HTTP status code.
  factory HkHttpExceptions.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return HkHttpExceptions(statusCode, 'Bad request. Please check your request parameters.');
      case 401:
        return HkHttpExceptions(statusCode, 'Unauthorized. Please authenticate and try again.');
      case 403:
        return HkHttpExceptions(statusCode, 'Forbidden. You do not have permission to access this resource.');
      case 404:
        return HkHttpExceptions(statusCode, 'Not found. The requested resource was not found.');
      case 408:
        return HkHttpExceptions(statusCode, 'Request timeout. Please try again later.');
      case 500:
        return HkHttpExceptions(statusCode, 'Internal server error. Please try again later.');
      case 502:
        return HkHttpExceptions(statusCode, 'Bad gateway. Please try again later.');
      case 503:
        return HkHttpExceptions(statusCode, 'Service unavailable. Please try again later.');
    // Additional rarely occurring status codes
      case 418:
        return HkHttpExceptions(statusCode, "I'm a teapot. This server is a teapot, not a coffee maker.");
      case 451:
        return HkHttpExceptions(statusCode, 'Unavailable for legal reasons. This resource is unavailable due to legal restrictions.');
      case 508:
        return HkHttpExceptions(statusCode, 'Loop detected. The server detected an infinite loop while processing the request.');
      case 511:
        return HkHttpExceptions(statusCode, 'Network authentication required. The client needs to authenticate to gain network access.');
      case 529:
        return HkHttpExceptions(statusCode, 'Site overloaded. The server is overloaded with requests. Try again later.');
      case 598:
        return HkHttpExceptions(statusCode, 'Network read timeout error. The network connection was closed before the response was fully received.');
      case 599:
        return HkHttpExceptions(statusCode, 'Network connect timeout error. The server did not respond within the timeout period.');
      default:
        return HkHttpExceptions(statusCode);
    }
  }
}
