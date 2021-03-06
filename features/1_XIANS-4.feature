@XIANS-4
Feature: Places
	#In order to chose places to go
	#Users should be able to search them
	#And read their descriptions

	
	@XIANS-5 @XIANS-3
	Scenario: I want to get details of a place with a given name.
		Given I define that city is "Chiang Mai"
		When I make a GET request to :cities/[city]
		Then I have a JSON response
		    And I define that _id is /0/_id from a result
		When I make a GET request to :cities/[_id]?fields=_id,name,coordinates,country,story
		Then I have a JSON response
			And I have a DictType result
			And country equals "TH" in a result
			And story/content contains "Northern" in a result