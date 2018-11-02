Class {
	#name : #RCElement,
	#superclass : #RCObject,
	#instVars : [
		'name',
		'defaultUnit'
	],
	#category : #'Recipes-Model'
}

{ #category : #'instance creation' }
RCElement class >> labelled: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #'instance creation' }
RCElement class >> named: aString defaultUnit: aUnit [
	^ self new
		name: aString;
		defaultUnit: aUnit;
		yourself
]

{ #category : #comparing }
RCElement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
		
	^ defaultUnit = anObject defaultUnit and: [ name = anObject name ]
]

{ #category : #accessing }
RCElement >> defaultUnit [
	^ defaultUnit
]

{ #category : #accessing }
RCElement >> defaultUnit: aUnit [
	defaultUnit := aUnit
]

{ #category : #comparing }
RCElement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ (defaultUnit hash bitXor: name hash) hashMultiply
]

{ #category : #accessing }
RCElement >> name [
	^ name
]

{ #category : #accessing }
RCElement >> name: aString [
	name := aString
]
