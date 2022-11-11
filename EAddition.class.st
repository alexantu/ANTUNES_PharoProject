Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #'Expressions-Model'
}

{ #category : #'instance creation' }
EAddition class >> fivePlusThree [
<sampleInstance>
| ep1 ep2 |
ep1 := EConstant new value: 5.
ep2 := EConstant new value: 3.
^ self new left: ep1 ; right: ep2
]

{ #category : #'public access' }
EAddition >> accept:aVisitor [
^aVisitor visitAddition: self
]

{ #category : #'public access' }
EAddition >> left: anExpression [
left := anExpression
]

{ #category : #'public access' }
EAddition >> operatorString [
^' + '
]

{ #category : #printing }
EAddition >> printOn: aStream [

	aStream nextPutAll: '( '.
	aStream nextPutAll: left asString.
	aStream nextPutAll: self operatorString.
	aStream nextPutAll: right asString.
	aStream nextPutAll: ' )'
]

{ #category : #'public access' }
EAddition >> right: anExpression [
right := anExpression
]
