# Protocols-Delegates

Using protocols and delegates in xcode and swift is - to me (and I consider myself to be relatively smart) - a very confusing concept to try to understand, let alone master. Most textual tutorials or videos left me more confused than before I began. This app is a bare-bones template that tries to demonstrate the procedure.

Protocols and delegates are often used to pass information from one class back to the class that called it. For example, Class A presents class B and then class B uses this methodology to pass information back to class A. In this example, the BabyViewControlled (Class A) asks the MomViewController (Class B) for some information ("food"). Class B then passes the information back to Class A. Therefore, start by reviewing the code in the MomViewController that starts with "1.". Next come back to the BabyViewConctoller to continue the logical sequence. The code used here is an amalgamation of concepts derived from "Bob the Developer," Sean Allen, and James Rochabrun.

Uses Xcode 10.2 and Swift 4.2
