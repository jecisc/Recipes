"
Description
--------------------

I am a session specific to Recipes application. I keep a reference to the rootCompoenent.
	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	rootVomponent:		<RCComponentn> I am the root of the RC application.

"
Class {
	#name : #RCSession,
	#superclass : #WASession,
	#instVars : [
		'rootComponent'
	],
	#category : #'Recipes-Web'
}

{ #category : #accessing }
RCSession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
RCSession >> rootComponent: anObject [
	rootComponent := anObject
]
