class PasswordValidationStatus {
  final bool isAtLeast6Characters;
  final bool hasAtLeastOneLowercaseCharacter;
  final bool hasAtLeastOneUppercaseCharacter;
  final bool hasAtLeastOneNumber;
  final bool hasAtLeastOneSpecialCharacter;

  PasswordValidationStatus({
    this.isAtLeast6Characters = false,
    this.hasAtLeastOneLowercaseCharacter = false,
    this.hasAtLeastOneUppercaseCharacter = false,
    this.hasAtLeastOneNumber = false,
    this.hasAtLeastOneSpecialCharacter = false
  });
}