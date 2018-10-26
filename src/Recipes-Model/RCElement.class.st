Class {
	#name : #RCElement,
	#superclass : #RCObject,
	#instVars : [
		'name'
	],
	#category : #'Recipes-Model'
}

{ #category : #'instance creation' }
RCElement class >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #accessing }
RCElement >> name [
	^ name
]

{ #category : #accessing }
RCElement >> name: aString [
	name := aString
]
