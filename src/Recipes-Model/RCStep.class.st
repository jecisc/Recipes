Class {
	#name : #RCStep,
	#superclass : #RCAbstractStep,
	#instVars : [
		'description'
	],
	#category : #'Recipes-Model'
}

{ #category : #accessing }
RCStep >> description [
	^ description
]

{ #category : #accessing }
RCStep >> description: aString [
	description := aString
]
