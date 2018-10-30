Class {
	#name : #RCRoot,
	#superclass : #RCComponent,
	#instVars : [
		'instancesMap',
		'currentComponent',
		'header'
	],
	#category : #'Recipes-Web'
}

{ #category : #'class initialization' }
RCRoot class >> initialize [
	| app |
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	app := WAAdmin register: self asApplicationAt: 'Recipes'.
	app preferenceAt: #sessionClass put: RCSession.
	app configuration at: #maximumAbsoluteAge put: 0.
	app configuration at: #maximumRelativeAge put: self sessionDuration.
	app
		addLibrary: MDLLibrary;
		addLibrary: JQDeploymentLibrary;
		addLibrary: RCLibrary.
		
	self flag: #todo.	"See https://github.com/SeasideSt/Seaside/issues/937. Need to change when we will use a more recent seaside version."
	app cache: app createCache
]

{ #category : #accessing }
RCRoot class >> sessionDuration [
	"60 minutes"
	
	^ 3600
]

{ #category : #accessing }
RCRoot >> browserFor: aClass [
	instancesMap at: aClass ifAbsentPut: [ aClass new ]
]

{ #category : #accessing }
RCRoot >> defaultHeader [ 
	^ RCHeader new
]

{ #category : #accessing }
RCRoot >> header [
	^ header
]

{ #category : #accessing }
RCRoot >> header: anObject [
	header := anObject
]

{ #category : #initialization }
RCRoot >> initialize [
	super initialize.
	self session rootComponent: self.
	header := self defaultHeader.
	instancesMap := IdentityDictionary new
]

{ #category : #rendering }
RCRoot >> renderContentOn: html [
	html
		mdlLayout: [ html render: self header.
			html mdlLayoutContent: [ html render: 'Salut' ] ]
]

{ #category : #updating }
RCRoot >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Recipes'.
	anHtmlRoot meta
		attributeAt: 'name' put: 'viewport';
		content: 'width=device-width, initial-scale=1'
]
