Class {
	#name : #RCUnitTest,
	#superclass : #TestCase,
	#instVars : [
		'instance'
	],
	#category : #'Recipes-Model-Tests'
}

{ #category : #testing }
RCUnitTest class >> isAbstract [
	^ self = RCUnitTest
]

{ #category : #helpers }
RCUnitTest >> actualClass [
	^ self subclassResponsibility
]

{ #category : #helpers }
RCUnitTest >> newInstance [
	^ self actualClass new
]

{ #category : #running }
RCUnitTest >> setUp [
	super setUp.
	instance := self newInstance
]
