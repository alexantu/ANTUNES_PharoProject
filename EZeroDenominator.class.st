Class {
	#name : #EZeroDenominator,
	#superclass : #Error,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EZeroDenominator >> zeroDenominator [
^[EZeroDenominator signal: 'the denominator is 0'].
]
