Class {
	#name : #BaselineOfRecipes,
	#superclass : #BaselineOf,
	#category : #BaselineOfRecipes
}

{ #category : #baselines }
BaselineOfRecipes >> baseline: spec [
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
BaselineOfRecipes >> garage: spec [
	spec
		baseline: 'Garage'
		with: [ spec
				loads: 'postgresV2';
				repository: 'github://pharo-rdbms/garage' ]
]

{ #category : #dependencies }
BaselineOfRecipes >> materialDesignLite: spec [
	spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v1.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfRecipes >> units: spec [
	spec baseline: 'Units' with: [ spec repository: 'github://zweidenker/Units/src' ]
]
