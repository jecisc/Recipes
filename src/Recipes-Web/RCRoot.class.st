Class {
	#name : #RCRoot,
	#superclass : #RCComponent,
	#instVars : [
		'instancesMap',
		'currentComponent'
	],
	#category : #'Recipes-Web'
}

{ #category : #'class initialization' }
RCRoot class >> initialize [
	| app |
	app := WAAdmin register: self asApplicationAt: 'Recipes'.
	app preferenceAt: #sessionClass put: RCSession.
	app configuration at: #maximumAbsoluteAge put: 0.
	app configuration at: #maximumRelativeAge put: self sessionDuration.
	app
		addLibrary: MDLLibrary;
		addLibrary: JQDeploymentLibrary.
	self flag: #todo.	"See https://github.com/SeasideSt/Seaside/issues/937. Need to change when we will use a more recent seaside version."
	app cache: app createCache
]

{ #category : #accessing }
RCRoot class >> sessionDuration. [
	"60 minutes"
	
	^ 3600
]

{ #category : #'as yet unclassified' }
RCRoot >> browserFor: aClass [
	instancesMap at: aClass ifAbsentPut: [ aClass new ]
]

{ #category : #initialization }
RCRoot >> initialize [
	super initialize.
	instancesMap := IdentityDictionary new
]

{ #category : #initialization }
RCRoot >> initializeRoot: html [
	super initializeRoot: html
]

{ #category : #rendering }
RCRoot >> renderContentOn: html [
	html render: 'Salut'
]
