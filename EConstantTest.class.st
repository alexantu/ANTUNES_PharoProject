Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #tests }
EConstantTest >> testCreationWithClassCreationMessage [

	self
		assert: ((EConstant value: 5) evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluate [

	self
		assert: ((EConstant new value: 5) evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluateDictionary [
self assert: ((EConstant constant5) evaluateWith: Dictionary new)
equals: 5
]

{ #category : #tests }
EConstantTest >> testNegated [

	self
		assert:
		((EConstant new value: 6) negated evaluateWith: Dictionary new)
		equals: -6
]

{ #category : #tests }
EConstantTest >> testNegationNegated [

	self
		assert:
		((EConstant new value: 6) negated negated evaluateWith:
			 Dictionary new)
		equals: 6
]

{ #category : #tests }
EConstantTest >> testPrinting [
self assert: (EConstant value: 5) printString equals: '5'
]
