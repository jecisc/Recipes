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
				dbConnectionsManager: spec;
				garage: spec;
				materialDesignLite: spec;
				seaside3: spec;
				units: spec.	
			
			"Packages"
			spec
				package: 'Recipes-Development' with: [ spec requires: #('Model' 'Tests' 'Web' 'DBConnectionsManager' 'Seaside3') ];
				package: 'Recipes-Model' with: [ spec requires: #('Garage' 'Units') ];
				package: 'Recipes-Model-Tests' with: [ spec requires: #('Recipes-Model') ];
				package: 'Recipes-Web' with: [ spec requires: #('MaterialDesignLite' 'Recipes-Model') ].
			
			"Groups"
			spec
				group: 'All' with: #('Model' 'Web' 'Tests');
				group: 'Development' with: #('Recipes-Development');
				group: 'Model' with: #('Recipes-Model');
				group: 'Tests' with: #('Recipes-Model-Tests');
				group: 'Web' with: #('Recipes-Web') ]
]

{ #category : #dependencies }
BaselineOfRecipes >> dbConnectionsManager: spec [
	spec baseline: 'DBConnectionsManager' with: [ spec repository: 'github://juliendelplanque/DBConnectionsManager/repository' ]
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
BaselineOfRecipes >> seaside3: spec [
	spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside/repository' ]
]

{ #category : #dependencies }
BaselineOfRecipes >> units: spec [
	spec baseline: 'Units' with: [ spec repository: 'github://zweidenker/Units/src' ]
]
