Class {
	#name : #RCAbstractPage,
	#superclass : #RCComponent,
	#category : #'Recipes-Web'
}

{ #category : #testing }
RCAbstractPage class >> isAbstract [
	^ self = RCAbstractPage
]
