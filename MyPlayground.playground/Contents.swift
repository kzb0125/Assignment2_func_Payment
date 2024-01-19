import UIKit

func monthlyPayment(_ principal: Int, _ numOfPayment: Int, _ interestRate: Float) -> Float{
    let rate = Decimal(Double(interestRate))/1200
    let rPower = pow(1 + rate, numOfPayment)
    let monthlyPayment = Decimal(principal) * rate * rPower / (rPower - 1)
    
    print("principal: \(principal)",type(of: principal))
    print("numOfPayment: \(numOfPayment)", type(of: numOfPayment))
    print("rate: \(rate)", type(of: rate))
    print("monthlyPayment: \(monthlyPayment)", type(of: monthlyPayment))
    
    //print("print (unrounded) \(testPrint1)", type(of: testPrint1))
    let testPrint2 = NSDecimalNumber(decimal: monthlyPayment).stringValue
    print("print (unrounded) \(testPrint2)", type(of: testPrint2))
    var myFloat = (testPrint2 as NSString).floatValue
    print("myFloat \(myFloat)", type(of: myFloat))
    print((myFloat*100).rounded()/100)
    return 2.1
}

print(monthlyPayment(20000, 2, 4.4))
