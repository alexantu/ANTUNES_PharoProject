Class {
	#name : #EExpression,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EExpression >> accept: aVisitor [
self subclassResponsibility
]

{ #category : #accessing }
EExpression >> evaluateWith: anEnvironment [
| visitor |
visitor := EEvaluatorVisitor new.
visitor bindings: anEnvironment.
^ self accept: visitor.
]

{ #category : #accessing }
EExpression >> negated [ 
^ENegation new expression:self
]
