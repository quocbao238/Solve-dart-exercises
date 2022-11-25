class Acronym {
  String abbreviate(String val) =>
      val.toUpperCase().splitMapJoin(RegExp(r"[A-Z']+"),
          onMatch: onMatch, onNonMatch: (_) => '');

  String onMatch(Match match) => match.group(0)![0];
}
