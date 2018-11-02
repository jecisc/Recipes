Class {
	#name : #RCKind,
	#superclass : #RCObject,
	#category : #'Recipes-Model'
}

{ #category : #testing }
RCKind class >> isAbstract [
	^ self = RCKind
]

{ #category : #accessing }
RCKind class >> kinds [
	^ self allSubclasses reject: #isAbstract
]
