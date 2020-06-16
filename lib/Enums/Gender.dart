enum Gender { MALE, FEMALE }

extension StringExtension on Gender {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
