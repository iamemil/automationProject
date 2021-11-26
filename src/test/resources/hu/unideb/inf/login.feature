Feature: Automation Practice login page

  Background:
    Given the home page is opened
    And the Sign In link is clicked

    Scenario Outline:
      Given the '<field>' is filled with '<parameter>'
      And the 'passwd' is filled with '<pass>'
      When the Sign In button is clicked
      Then the '<msg>' error message is shown
      Examples:
        | field | parameter         | pass  | msg                        |
        | email |                   |       | An email address required. |
        | email | invalid.email.com |       | Invalid email address.     |
        | email | valid@email.com   |       | Password is required.      |
        | email | valid@email.com   | 12345 | Authentication failed.     |
