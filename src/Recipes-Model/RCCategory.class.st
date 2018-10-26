Class {
	#name : #RCCategory,
	#superclass : #RCObject,
	#instVars : [
		'name'
	],
	#category : #'Recipes-Model'
}

{ #category : #accessing }
RCCategory >> name [
	^ name
]

{ #category : #accessing }
RCCategory >> name: anObject [
	name := anObject
]
