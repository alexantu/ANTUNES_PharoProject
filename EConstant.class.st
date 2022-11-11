Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EConstant class >> constant3 [
<sampleInstance>
^ self new value: 3
]

{ #category : #accessing }
EConstant class >> constant5 [
<sampleInstance>
^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: anInteger [
^ self new value: anInteger
]

{ #category : #accessing }
EConstant >> accept: aVisitor [
^ aVisitor visitConstant: self
]

{ #category : #accessing }
EConstant >> printOn: aStream [
aStream nextPutAll: value printString
]

{ #category : #accessing }
EConstant >> value [ 
^value
]

{ #category : #accessing }
EConstant >> value: anInteger [
value := anInteger
]

{ #category : #accessing }
EConstant >> visitConstant: aConstant [
^ aConstant value
]
