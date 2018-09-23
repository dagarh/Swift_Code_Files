import UIKit

func BMICalculator(weightInKg : Double, heightInMeter : Double) -> String{
    
    let bmi : Double = weightInKg / pow(heightInMeter, 2)
    
    var shortenedBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "You are overweight"
     }else if bmi > 18.5 {
        interpretation = "You are of normal weight"
    }else {
        interpretation = "You are underweight"
    }
    
    return "Your bmi is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = BMICalculator(weightInKg: 75, heightInMeter: 1.73)
print(bmiResult)
