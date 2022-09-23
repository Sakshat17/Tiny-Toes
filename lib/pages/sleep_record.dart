class SleepRecord {
  DateTime currentDateTime;
  String dropdownSelectedValue;
  Duration selectedDuration;

  SleepRecord({
      this.currentDateTime, this.dropdownSelectedValue, this.selectedDuration});

  dynamic toJson() => {
    'currentDateTime': currentDateTime,
    'dropdownSelectedValue': dropdownSelectedValue,
    'selectedDuration': selectedDuration,
  };

  factory SleepRecord.fromJson(Map<String, dynamic> json) {
    return SleepRecord(
      currentDateTime: json['currentDateTime'],
      dropdownSelectedValue: json['dropdownSelectedValue'],
      selectedDuration: json['selectedDuration'],
    );
  }
}