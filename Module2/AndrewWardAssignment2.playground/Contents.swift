/*
 Simple playground for a mortgage payment calculator.
 Calculates the payment for the two provided examples
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

print("Below are two examples of mortgage payment calculations\n")
print("Example 1:\n")
print("Principal - $20,000\n")
print("Period - 2 Months\n")
print("Interest Rate - 4.4% APR Compounded Monthly\n")

print("Monthly Payment: ","$",Payment(principal: 20000, payments: 2, apr: 0.00367),"\n")

print("--------------------------------------------------------------------------------\n")

print("Example 2:\n")
print("Principal - $150,000\n")
print("Period - 30 Years\n")
print("Interest Rate - 5.0% APR with one annual payment\n")

print("Yearly Payment: ","$",Payment(principal: 150000, payments: 30, apr: 0.05),"\n")



