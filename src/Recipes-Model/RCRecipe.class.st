Class {
	#name : #RCRecipe,
	#superclass : #RCObject,
	#instVars : [
		'name',
		'kind',
		'categories',
		'ingredients',
		'instruction',
		'note'
	],
	#category : #'Recipes-Model'
}

{ #category : #accessing }
RCRecipe >> categories [
	^ categories
]

{ #category : #accessing }
RCRecipe >> categories: aCollection [
	categories := aCollection
]

{ #category : #accessing }
RCRecipe >> ingredients [
	^ ingredients
]

{ #category : #accessing }
RCRecipe >> ingredients: aCollection [
	ingredients := aCollection
]

{ #category : #accessing }
RCRecipe >> instruction [
	^ instruction
]

{ #category : #accessing }
RCRecipe >> instruction: anInstruction [
	instruction := anInstruction
]

{ #category : #accessing }
RCRecipe >> kind [
	^ kind
]

{ #category : #accessing }
RCRecipe >> kind: aKind [
	kind := aKind
]

{ #category : #accessing }
RCRecipe >> name [
	^ name
]

{ #category : #accessing }
RCRecipe >> name: aString [
	name := aString
]

{ #category : #accessing }
RCRecipe >> note [
	^ note
]

{ #category : #accessing }
RCRecipe >> note: aString [
	note := aString
]
