Class {
	#name : #RCDevelopmentFacade,
	#superclass : #RCObject,
	#classVars : [
		'Connection'
	],
	#category : #'Recipes-Development'
}

{ #category : #actions }
RCDevelopmentFacade class >> closeConnection [
	<script>
	
	Connection ifNotNil: #terminate
]

{ #category : #actions }
RCDevelopmentFacade class >> connectToLocalDatabase [
	<script>
	
	(UIManager default requestPassword: 'Local database password')
		ifNotNil: [ :password | ^ Connection := GADriver connectToConnectionString: 'postgresV2://localhost:5432/Recipes?&user=postgres&password=' , password ]
]

{ #category : #accessing }
RCDevelopmentFacade class >> connection [ 	
	^ Connection
]

{ #category : #'class initialization' }
RCDevelopmentFacade class >> initialize [
	self openPlaygroundWithOptions
]

{ #category : #actions }
RCDevelopmentFacade class >> openPlaygroundWithOptions [
	<script>
	
	GTPlayground openContents: 'RCDevelopmentFacade connectToLocalDatabase.


connection := RCDevelopmentFacade connection'
]
