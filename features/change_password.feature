Feature: Change password for registered user
  In order to better privacy
  As a signed-in user 
  Should be able to change password

  Scenario: Existing user want to change own password
    Given Signed admin user
    And I want to edit current user page
    Then I should see "Change your password"
    And I fill in "user_password" with "11111"
    And I fill in "user_password_confirmation" with "11111"
    When I press "Change my password"
    Then page should have notice message "Your password was changed successfully."
