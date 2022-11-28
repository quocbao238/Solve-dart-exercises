/*

Bob is a lackadaisical teenager. In conversation, his responses are very limited.

Bob answers 'Sure.' if you ask him a question, such as "How are you?".

He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).

He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

He says 'Fine. Be that way!' if you address him without actually saying anything.

He answers 'Whatever.' to anything else.

Bob's conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.

*/

class Bob {
  // Put your code here

  String response(String val) {
    val = _trimText(val);
    if (!_isNotEmpty(val)) return 'Fine. Be that way!';

    final stripped = _stripped(val);

    if (_isNotEmpty(stripped) && stripped == stripped.toUpperCase()) {
      if (_isQuestion(stripped)) return 'Calm down, I know what I\'m doing!';
      return 'Whoa, chill out!';
    }

    if (_isQuestion(val)) return "Sure.";

    return 'Whatever.';
  }

  String _trimText(String val) => val.trim();

  bool _isNotEmpty(String val) => val.isNotEmpty;

  bool _isQuestion(String val) => val.endsWith('?');

  String _stripped(String val) =>
      RegExp(r"([A-Za-z]+)").allMatches(val).map((m) => m.group(0)).join(' ');
}
