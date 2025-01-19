/*
 Simple playground for a mortgage payment calculator.
 CSPC-5330 Assignment 2
 Author: Andrew Ward
 Version: 1.19.25
 */

import Foundation

func Payment(principal: Int, payments: Int, apr: Float) -> Float {
    var dividend : Float = (Float(principal) * apr) * pow((1 + apr), Float(payments))
    var divisor : Float = pow((1 + apr), Float(payments)) - 1
    var monthlyPayment : Float = dividend / divisor
    return monthlyPayment
}

print("Below are two examples of mortgage payment calculation\n")
print("Example 1:\n")
print("Principal - $20,000\n")
print("Period - 2 Months\n")
print("Intrest Rate - 4.4% APR Compounded Monthly\n")

print("Monthly Payment: ",Payment(principal: 200000, payments: 360, apr: 0.005416667))

