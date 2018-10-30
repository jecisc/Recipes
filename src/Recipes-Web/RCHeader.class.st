Class {
	#name : #RCHeader,
	#superclass : #RCComponent,
	#category : #'Recipes-Web'
}

{ #category : #rendering }
RCHeader >> renderContentOn: html [
	html mdlLayout
		fixedHeader;
		with: [ html
				mdlLayoutHeader: [ html
						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Recipes'.
							html mdlLayoutSpacer ] ] ]
]
