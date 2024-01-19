import UIKit

// monthly payment calculation
// input:   principal as Int
//          number of payments (month) as Int
//          interest rate as Float
// output:  monthly payment as Float
func monthlyPayment(_ principal: Int, _ numOfPayment: Int, _ interestRate: Float) -> Float{
    // rate is casted to a decimal type for use in the pow(x:Decimal , y:Int) function
    let rate = Decimal(Double(interestRate))/1200
    // rPower created for use in amorization formula
    let rPower = pow(1 + rate, numOfPayment)
    // monthly payment calculation based on a monthly amortization formula (datatype: Decimal)
    let monthlyPayment = Decimal(principal) * rate * rPower / (rPower - 1)
    
    // Decimal to String cast
    let monthlyPaymentString = NSDecimalNumber(decimal: monthlyPayment).stringValue
    // String to Float cast
    var monthlyPaymentFloat = (monthlyPaymentString as NSString).floatValue
    // round monthly payment to the hundredth place to represent cents.
    monthlyPaymentFloat = (monthlyPaymentFloat*100).rounded()/100
    
    return monthlyPaymentFloat
}

print(monthlyPayment(20000, 2, 4.4))
print(monthlyPayment(150000, 360, 5))
