Class {
	#name : #RCInstruction,
	#superclass : #RCAbstractStep,
	#instVars : [
		'steps'
	],
	#category : #'Recipes-Model'
}

{ #category : #accessing }
RCInstruction >> steps [
	^ steps
]

{ #category : #accessing }
RCInstruction >> steps: aCollection [
	steps := aCollection
]
