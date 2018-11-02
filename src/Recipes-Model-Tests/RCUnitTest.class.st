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
	^ self class environment
		at: (self class name withoutSuffix: 'Test') asSymbol
		ifAbsent: [ self error: 'No class for this TestCase' ]
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
