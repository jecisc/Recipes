Class {
	#name : #RCObject,
	#superclass : #Object,
	#category : #'Recipes-Model'
}

{ #category : #'as yet unclassified' }
RCObject class >> notes [
	| connection |
	GADriver availableDrivers.
	connection := GADriver connectToConnectionString: 'postgresV2://localhost:5432/Recipes?&user=postgres&password=postgres'.
	connection isConnected.
	connection
		execute:
			'CREATE TABLE CATS (
	name varchar(50),
	owner varchar(50))'.
	connection execute: 'SELECT * FROM CATS'.
	connection execute: 'DROP TABLE CATS'.
	connection close
]

{ #category : #printing }
RCObject >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPut: $[;
		nextPutAll: self hash asString;
		nextPut: $]
]
