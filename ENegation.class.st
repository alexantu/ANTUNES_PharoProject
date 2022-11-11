Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#category : #'Expressions-Model'
}

{ #category : #'instance creation' }
ENegation class >> expression:anExpression [
^ self new expression:anExpression
]

{ #category : #accessing }
ENegation >> accept:aVisitor [
^aVisitor visitNegation: self
]

{ #category : #accessing }
ENegation >> expression [
^expression
]

{ #category : #accessing }
ENegation >> expression: anExpression [
expression := anExpression
]

{ #category : #accessing }
ENegation >> negated [
^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [
aStream nextPutAll: '- '.
expression printOn: aStream
]
