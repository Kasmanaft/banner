Feature: CRUD campaigns
  In order to manage campaign
  As a signed-in user 
  Should be able to CRUD campaigns

  Scenario: User want to create new campaign
    Given Signed admin user
    When I am on the home page
    Then I should see "New Campaign"

    When I click "New Campaign"
    Then I should be on the new campaign page

    When I fill in "campaign_name" with "Campaign1113"
    And I press "Save"
    Then page should have notice message "Campaign was successfully created."
    And I should see "Campaign1113"

  Scenario: User want to rename existing campaign
    Given Signed admin user
    And I have existing campaign "Campaign43"
    And I am on the home page
    When I click "Campaign43"
    And I click "Edit Campaign43"
    Then I should see "Editing campaign"
    And the "campaign_name" field should contain "Campaign43"

    When I fill in "campaign_name" with "Campaign93"
    And I press "Save"
    Then page should have notice message "Campaign was successfully updated."
    And I should see "Campaign93"
    And I should not see "Campaign43"

  Scenario: user want to delete campaign
    Given Signed admin user
    And I have existing campaign "Campaign43"
    And I am on the home page
    And I click "Campaign43"

    When I click "Delete Campaign43"
    Then I should be on the campaigns page
    And I should not see "Campaign43"
