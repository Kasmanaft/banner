Feature: CRUD banners
  In order to manage banners in campaigns
  As a signed-in user 
  Should be able to CRUD banners
  Banner should belongs to only one campaign

  Scenario: User want to add new banner to campaign
    Given Signed admin user
    And I have existing campaign "Campaign43"
    And I am on the home page
    When I click "Campaign43"
    Then I should see "Add new banner"

    When I click "Add new banner"
    Then I should be able to add image to campaign "Campaign43"

    When I fill in "image_max_show" with "6"
    And I fill in "image_link" with "http://test13.me/"
    And I attach test image
    And I press "Save"

    Then page should have notice message "Image was successfully added."
    And I should see "http://test13.me/"

  Scenario: User want ot delete banner from campaign
    Given Signed admin user
    And I have existing test campaign with test image
    When I visit page for the test campaign
    And I click "Delete banner"
    Then page should have notice message "Image was successfully deleted."
    And I should not see "http://test.me/"

    
  Scenario: User want to change banner
    Given Signed admin user
    And I have existing test campaign with test image
    When I visit page for the test campaign
    And I click "Edit banner"
    And I fill in "image_link" with "http://test13.me/"
    And I press "Save"
    Then page should have notice message "Image was successfully changed."
    And I should not see "http://test.me/"
    And I should see "http://test13.me/"



