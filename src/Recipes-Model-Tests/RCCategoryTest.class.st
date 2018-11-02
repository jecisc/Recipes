Class {
	#name : #RCCategoryTest,
	#superclass : #RCUnitTest,
	#category : #'Recipes-Model-Tests'
}

{ #category : #tests }
RCCategoryTest >> testLabelled [
	self assert: (self actualClass labelled: 'Toto') label equals: 'Toto'
]
