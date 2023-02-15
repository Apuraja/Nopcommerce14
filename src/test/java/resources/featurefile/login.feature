@regression
Feature: Login Test
  As user I want to login into nop commerce website

  @smoke
  Scenario: User should navigate to login page successfully
    Given I am on homepage
    When I click on login link
    Then I should navigate to login page successfully

  @Smoke
  Scenario: VerifyErrorWithInValidCredentials
    Given I am on homepage
    When I click on login link
    And I Enter Email "xyz@gmail.com"
    And I Enter Password "56789"
    And I click on login Button
    Then I should navigate to profile page

  @Smoke
  Scenario: VerifyThatUserShouldLogInSuccessFullyWithValidCredentials
    Given I am on homepage
    When I click on login link
    And I Enter Email "Pista@gmail.com"
    And I Enter Password "1234567"
    And I click on login Button
    Then I should navigate to profileA page

  @Smoke
  Scenario: VerifyThatUserShouldLogOutSuccessFully
    Given I am on homepage
    When I click on login link
    And I Enter Email "Pista@gmail.com"
    And I Enter Password "1234567"
    And I click on login Button
    And I should navigate to profileA page
    And I click on logout Button
    Then I should navigate to login page again

