import Float "mo:base/Float";
actor {
  type Features = {
    weight: Float;
    height: Float
  };
  public query func BMICalculator(features : Features) : async Text {
    // Enter the value of your weight in Kg
    // Enter the value of your height in metres

    var bmi = features.weight / (features.height ** 2);
    var bmiAsString = Float.toText(bmi);
    if (18.5 <= bmi and bmi < 25) {
      return "Your Body Mass Index is " # bmiAsString # ". Congratulations, You are within the healthy weight range."
    } else if (bmi < 18.5) {
      return "Your Body Mass Index is " # bmiAsString # ". Sorry, you are within the underweight range. Kindly see your doctor immediately."
    } else if (25 <= bmi and bmi < 30) {
      return "Your Body Mass Index is " # bmiAsString # ". Sorry, you are within the overweight range. Kindly see your doctor immediately."
    } else {
      return "Your Body Mass Index is " # bmiAsString # ". Sorry, you are within the Obese range. You need urgent medical help."
    }
  };
}