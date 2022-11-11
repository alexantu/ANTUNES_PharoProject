Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'Expressions-Model'
}

{ #category : #'instance creation' }
EMultiplication class >> fiveTimesThree [
<sampleInstance>
| ep1 ep2 |
ep1 := EConstant constant5.
ep2 := EConstant constant3.
^ EMultiplication new left: ep1 ; right: ep2
]

{ #category : #accessing }
EMultiplication >> accept:aVisitor [
^aVisitor visitMultiplication: self
]

{ #category : #accessing }
EMultiplication >> left: anExpression [
left := anExpression
]

{ #category : #accessing }
EMultiplication >> operatorString [ 
^' * '
]

{ #category : #accessing }
EMultiplication >> printOn:aStream [
aStream nextPutAll:'( '.
aStream nextPutAll: left asString.
aStream nextPutAll:self operatorString.
aStream nextPutAll: right asString.
aStream nextPutAll:' )'.
]

{ #category : #accessing }
EMultiplication >> right: anExpression [
right := anExpression
]
