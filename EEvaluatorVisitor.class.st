Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EEvaluatorVisitor >> at: anId put: aValue [
bindings at: anId put: aValue
]

{ #category : #visiting }
EEvaluatorVisitor >> bindings [
^bindings
]

{ #category : #visiting }
EEvaluatorVisitor >> bindings: aDictionary [
bindings := aDictionary
]

{ #category : #visiting }
EEvaluatorVisitor >> initialize [
super initialize.
bindings := Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anEAddition [
^(anEAddition left accept:self) + (anEAddition right accept:self)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
^ aConstant value
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: anEDivision [
|denominator error|

denominator:=anEDivision denominator accept: self.

error:=EZeroDenominator new.

denominator=0 ifTrue: [ error signal "Le numérateur vaut 0" ].

^(anEDivision numerator accept:self) / denominator
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [
^(anEMultiplication left accept:self) * (anEMultiplication right accept:self)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: anENegation [
^(anENegation expression accept:self) negated
]

{ #category : #visiting }
EEvaluatorVisitor >> visitVariable: aVariable [

^self bindings at:(aVariable id)
]
