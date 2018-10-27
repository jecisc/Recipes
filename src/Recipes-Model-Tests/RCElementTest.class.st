Class {
	#name : #RCElementTest,
	#superclass : #RCUnitTest,
	#category : #'Recipes-Model-Tests'
}

{ #category : #helpers }
RCElementTest >> actualClass [
	^ RCElement
]

{ #category : #tests }
RCElementTest >> testNamedUnit [
	instance := self actualClass named: 'Flour' defaultUnit: Unit gram.
	self assert: instance name equals: 'Flour'.
	self assert: instance defaultUnit equals: Unit gram
]
