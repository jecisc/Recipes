Class {
	#name : #RCRecipeTest,
	#superclass : #RCUnitTest,
	#category : #'Recipes-Model-Tests'
}

{ #category : #tests }
RCRecipeTest >> testRecipeCreation [
	self flag: #todo.	"This is not finished."
	instance := self newInstance
		name: 'Tarte à la tomate';
		kind: RCMeal;
		categories: (OrderedCollection with: (RCCategory labelled: 'Simple'));
		note: 'Here it''s useless';
		ingredients: (OrderedCollection with: (RCIngredient element: (RCElement named: 'Moutarde' defaultUnit: Unit g) quantity: (15 units: Unit g)));
		yourself.

	self assert: instance name equals: 'Tarte à la tomate'
]
