/// Print logs using emoji
///
/// Use with EmojiLogger.d('your message)
class EmojiLogger {
  /// Print debug messages
  static d(String message){
    print('🐞 $message');
  }

  /// Print error messages
  static e(String message){
    print('🚨 $message');
  }
}
