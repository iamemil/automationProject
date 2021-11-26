Feature: Automation Practice Newsletter

  Background:
    Given the home page is opened

    Scenario Outline:
      Given the 'newsletter-input' is filled with '<parameter>'
      When the Newsletter button is clicked
      Then the '<msg>' error message is shown
      Examples:
        | parameter         | msg                        |
        |                   | Invalid email address.     |
        | invalid.email.com | Invalid email address.     |
        | valid@email.com   | This email address is already registered.|
