Feature: sample karate test script to verify free api's.

Background:
* url baseurl

	Scenario: GET api call to verify status code and check user user id from response

    Given path 'todos/1'
    When method GET
    Then status 200
    And assert response.userId == 1
 
	Scenario: GET api call to verify status code and last is and title of user     
    
    
    Given path 'posts'
    When method GET
    Then status 200
    And assert response[99].id == 100
    And match response[99].title == "at nam consequatur ea labore ea harum"
    
    
	Scenario: Get all users from api and validate first user name 
        
    Given path 'users'
    When method GET
    Then status 200
    And match response[0].name == "Leanne Graham"
   
	Scenario: Create user with json input 
    
  * def user_data = read('Create_user.json')
    
    Given path 'posts'
    And header Content-Type = 'application/json'
		And request user_data
		When method post
		Then status 201
		* print response
   
    	
