Feature: Test thing

  Scenario: Test 200 status code page
    Given I navigate to "http://the-internet.herokuapp.com/status_codes/200"
    Then the page contains the header "Status Codes"