import 'dart:math';

class calculation_h {
  calculation_h({this.heightt, this.weightt});
  final int heightt;
  final int weightt;
  double no;
  String calculateno() {
    no = weightt / pow(heightt / 100, 2);
    return no.toStringAsFixed(1);
  }

  String calculatetext() {
    if (no >= 25) {
      return 'अधिक वजन';
    } else if (no >= 18.5) {
      return 'सामान्य';
    } else {
      return 'अल्प-भार';
    }
  }

  String calculateinfo() {
    if (no >= 25) {
      return 'आपका वजन सामान्य से अधिक है। अधिक व्यायाम करने का प्रयास करें।';
    } else if (no >= 18.5) {
      return 'आपका शरीर का वजन सामान्य है। अच्छा कार्य!';
    } else {
      return 'आपका वजन सामान्य से कम है। आपको थोड़ा और खाना चाहिए।';
    }
  }
}