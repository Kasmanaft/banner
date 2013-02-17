Feature: Signing up
  In order to access a restricted part
  As a non signed-in visitor 
  Should be able to sign up

  Scenario: Sends correct credentials
    Given Registered user admin
    And I am on the home page
    And I fill in "user_email" with "admin@example.com"
    And I fill in "user_password" with "password"
    When I press "Sign in"
    Then page should have notice message "Signed in successfully."
    And I should see "Change password"

  Scenario: Sends incorrect credentials
    Given Registered user admin
    And I am on the home page
    And I fill in "user_email" with "admin@example.com"
    And I fill in "user_password" with "incorrect password"
    When I press "Sign in"
    Then page should have notice message "Invalid email or password."
    And I should not see "Change password"