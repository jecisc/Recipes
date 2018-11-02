Class {
	#name : #RCCategory,
	#superclass : #RCObject,
	#instVars : [
		'label'
	],
	#category : #'Recipes-Model'
}

{ #category : #'instance creation' }
RCCategory class >> labelled: aString [ 
	^ self new
		label: aString;
		yourself
]

{ #category : #accessing }
RCCategory >> label [
	^ label
]

{ #category : #accessing }
RCCategory >> label: aString [
	label := aString
]
