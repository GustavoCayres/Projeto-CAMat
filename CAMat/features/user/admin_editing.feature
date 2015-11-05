Feature: Admin editing permission
  In order to edit users information
  As a admin user
  I want to be able to acess and edit users information

  Scenario: access to user list
   	Given I am logged in as an Admin
    When I click the "Voltar aos usuários" link
    Then I should be at the user list page

  Scenario: editing a generic user
    Given I am logged in as an Admin
    And I have a valid User named "Cliente" 
    When I click the "Voltar aos usuários" link
    Then I should be at the user list page
    When I click the "Cliente" link
	And I click the "Edit" link
	Then I should see "Editar informações"
