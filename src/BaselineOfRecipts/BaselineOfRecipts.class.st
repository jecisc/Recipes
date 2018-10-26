Class {
	#name : #BaselineOfRecipts,
	#superclass : #BaselineOf,
	#category : #BaselineOfRecipts
}

{ #category : #baselines }
BaselineOfRecipts >> baseline: spec [
	<baseline>
	
	spec
		for: #common
		do: [
			"Dependencies"
			self
				garage: spec;
				materialDesignLite: spec;
				units: spec.	
			
			"Packages"
			spec
				package: 'Recipes-Model' with: [ spec requires: #('Garage' 'Units') ];
				package: 'Recipes-Web' with: [ spec requires: #('MaterialDesignLite') ].
			
			"Groups"
			spec
				group: 'All' with: #('Model' 'Web');
				group: 'Model' with: #('Recipes-Model');
				group: 'Web' with: #('Recipes-Web') ]
]

{ #category : #dependencies }
BaselineOfRecipts >> garage: spec [
	spec
		baseline: 'Garage'
		with: [ spec
				loads: 'postgresV2';
				repository: 'github://pharo-rdbms/garage' ]
]

{ #category : #dependencies }
BaselineOfRecipts >> materialDesignLite: spec [
	spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v1.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfRecipts >> units: spec [
	spec baseline: 'Units' with: [ spec repository: 'github://zweidenker/Units/src' ]
]
