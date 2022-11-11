Class {
	#name : #EPrinterVisitor,
	#superclass : #Object,
	#category : #'Expressions-Model'
}

{ #category : #visiting }
EPrinterVisitor >> visitAddition: anAddition [
| left right|
left  := anAddition left accept:self.
right := anAddition right accept:self.
^ '(', left , ' + ', right, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitConstant: aConstant [
^ (aConstant accept:EEvaluatorVisitor new) 	asString
]

{ #category : #visiting }
EPrinterVisitor >> visitDivision: anDivision [
| left right |
left := anDivision numerator accept: self.
right := anDivision denominator accept: self.
^ '(', left , ' / ', right, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitMultiplication: aMultiplication [
| left right |
left := aMultiplication left accept: self.
right := aMultiplication right accept: self.
^ '(', left , ' * ', right, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitNegation: aNegation [
^ '(', (aNegation accept:EEvaluatorVisitor new) asString , ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitVariable: aVariable [
^aVariable id asString
]
