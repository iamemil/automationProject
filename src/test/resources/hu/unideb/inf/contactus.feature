Feature: Testing the ContactUs page

  Background:
    Given the home page is opened
    And the Contact Us link is clicked

    Scenario Outline:
      Given the email address is filled with "<email_address>"
      And the order reference is filled with "<ref>"
      And the message is filled with "<contactMsg>"
      When the Send button is clicked
      Then a "<msg>" error message is shown
      Examples:
        | email_address              | ref     | contactMsg | msg                                             |
        |                            | 3333    | Hello      | Invalid email address.                          |
        | ismailzadeh.emil@gmail.com |         | Hello      | Please select a subject from the list provided. |
        | ismailzadeh.emil@gmail.com | 3333    |            | The message cannot be blank.                    |
        | ismailzadeh.emil@gmail.com | 3333    | Hello      | Please select a subject from the list provided. |
