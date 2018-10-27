Class {
	#name : #RCIngredient,
	#superclass : #RCObject,
	#instVars : [
		'element',
		'unit'
	],
	#category : #'Recipes-Model'
}

{ #category : #'instance creation' }
RCIngredient class >> element: anElement quantity: anInteger [ 
	^ self element: anElement unit: (anInteger units: (anElement defaultUnit name) asSymbol).
]

{ #category : #'instance creation' }
RCIngredient class >> element: anElement unit: aUnit [
	^ self new
		element: anElement;
		unit: aUnit;
		yourself
]

{ #category : #accessing }
RCIngredient >> element [
	^ element
]

{ #category : #accessing }
RCIngredient >> element: anElement [
	element := anElement
]

{ #category : #accessing }
RCIngredient >> unit [
	^ unit
]

{ #category : #accessing }
RCIngredient >> unit: aUnit [
	unit := aUnit
]
