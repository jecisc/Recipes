Class {
	#name : #RCObject,
	#superclass : #Object,
	#category : #'Recipes-Model'
}

{ #category : #printing }
RCObject >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPut: $[;
		nextPutAll: self hash asString;
		nextPut: $]
]
