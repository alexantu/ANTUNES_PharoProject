Class {
	#name : #EPrintVisitorTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
EPrintVisitorTest >> testPrintingAddition [
|visitor add|
visitor:=EPrinterVisitor new.
add:=EAddition fivePlusThree.
self
assert: (visitor visitAddition:add)
equals: '(5 + 3)'.
]

{ #category : #tests }
EPrintVisitorTest >> testPrintingConstant [
|visitor fiveConstant|
visitor:=EPrinterVisitor new.
fiveConstant:=(EConstant value: 5).
self assert: (visitor visitConstant: fiveConstant ) equals: '5'.
self assert: (visitor visitConstant: fiveConstant negated ) equals: '-5'.
]

{ #category : #tests }
EPrintVisitorTest >> testPrintingDivision [
|div visitor|
visitor:=EPrinterVisitor new.
div:=EDivision numerator: (EConstant new value:3) denominator: (EConstant new value:4).
self
assert: (visitor visitDivision: div)
equals: '(3 / 4)'
]

{ #category : #tests }
EPrintVisitorTest >> testPrintingMultiplication [
|visitor mul|
visitor:=EPrinterVisitor new.
mul:=EMultiplication fiveTimesThree.
self
assert: (visitor visitMultiplication: mul)
equals: '(5 * 3)'.
]

{ #category : #tests }
EPrintVisitorTest >> testPrintingNegation [
|neg cons visitor|
cons:=EConstant new value:12.
neg :=ENegation new expression: cons.
visitor:=EPrinterVisitor new.

self
assert: (visitor visitNegation:neg)
equals: '(-12)'.

self
assert: (visitor visitNegation: (ENegation new expression: (EAddition fivePlusThree)))
equals: '(-8)'.
]

{ #category : #tests }
EPrintVisitorTest >> testPrintingVariable [
|variable|
variable := EVariable id: #answerToTheQuestion.
self
assert: (EPrinterVisitor new visitVariable:variable) equals: 'answerToTheQuestion'.
]
