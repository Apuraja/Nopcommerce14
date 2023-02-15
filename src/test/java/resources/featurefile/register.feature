Feature: Register Test
  As a user i want to register into nopcommerce website

  @Register
  Scenario: userNavigateToRegisterPageSuccessFully
    Given I am on homepage
    When I click on register link
    Then I Should navigate to Register page

  @Register
  Scenario: verifyThatFirstNameLastNameEmailPasswordAndConfirmPasswordFieldsAreMandatory
    Given I am on homepage
    When I click on register link
    And I click on Register Button
    Then I should verify Error message

  @Register
  Scenario : verifyThatUserShouldCreateAccountSuccessfully
    Given I am on homepage
    When I click on register link
    And I select Female
    And I enter Firstname "Mango"
    And I enter Lastname "Keri"
    And I select Day "11"
    And I select Month "04"
    And I select Year "1990"
    And I Enter email "Pista@gmail.com"
    And I Enter password "1234567"
    And I Enter password again "1234567"
    And I click on Register Button
    Then I should navigate to new profile page
