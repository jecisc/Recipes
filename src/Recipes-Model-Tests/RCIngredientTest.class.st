Class {
	#name : #RCIngredientTest,
	#superclass : #RCUnitTest,
	#category : #'Recipes-Model-Tests'
}

{ #category : #helpers }
RCIngredientTest >> flour [
	^ RCElement named: 'Flour' defaultUnit: Unit gram
]

{ #category : #tests }
RCIngredientTest >> testElementQuantity [
	instance := self actualClass element: self flour quantity: 15.
	self assert: instance element equals: self flour.
	self assert: instance unit equals: 15g
]

{ #category : #tests }
RCIngredientTest >> testElementUnit [
	instance := self actualClass element: self flour unit: 15g.
	self assert: instance element equals: self flour.
	self assert: instance unit equals: 15g
]

{ #category : #tests }
RCIngredientTest >> testValue [
	instance
		element: self flour;
		value: 15.

	self assert: instance unit equals: (15 units: Unit g)
]
