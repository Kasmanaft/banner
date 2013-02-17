Feature: Forgotten password
  In order to user convenience
  As a non signed-in visitor 
  Should be able to restore forgotten password

  Scenario: Existing user want to restore own password
    Given Registered user admin
    And I am on the forgotten password page
    And I fill in "user_email" with "admin@example.com"
    And I press "Send me reset password instructions"
    Then I should see "You will receive an email with instructions"
    And "admin@example.com" should receive an email

    When I open the email
    Then I should see "Change my password" in the email body

    When I follow "Change my password" in the email
    Then I should see "Change your password"

    And I fill in "user_password" with "11111"
    And I fill in "user_password_confirmation" with "11111"
    When I press "Change my password"
    Then page should have notice message "Your password was changed successfully. You are now signed in."

  Scenario: Non-Existing user want to restore own password
    Given Registered user admin
    And I am on the forgotten password page
    And I fill in "user_email" with "test@example.com"
    And I press "Send me reset password instructions"
    Then I should see "Email not found"
    And "test@example.com" should receive no email


