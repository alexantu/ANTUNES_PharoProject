Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'Expressions-Model'
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: anEExpression right: anEExpression2 [
^ self new left: anEExpression; right: anEExpression2
]

{ #category : #accessing }
EBinaryExpression >> left [
^left
]

{ #category : #'public access' }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility 
]

{ #category : #accessing }
EBinaryExpression >> right [
^right
]
