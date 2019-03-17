Feature: Wait for forms
    As a kakunin user
    I want fill and check form fields

    Scenario: Fill and check form fields
        Given I visit the "main" page
        When I click the ".appearForm" element
        Then the "appearSimpleForm" page is displayed
        When I click the ".colored" element
        And I fill the "form" form with:
            | input[name="name"]           | d:test-dictionary:test-name |
            | textarea[name="description"] | some description            |
            | input[type="checkbox"]       | Checkbox Option 2           |
            | input[type="checkbox"]       | Checkbox Option 3           |
            | input[type="radio"]          | third-radio-option          |
            | select[name="status"]        | unknown                     |
        Then the "form" form is filled with:
            | input[name="name"]           | d:test-dictionary:test-name |
            | textarea[name="description"] | some description            |
            | input[type="checkbox"]       | Checkbox Option 2           |
            | input[type="checkbox"]       | Checkbox Option 3           |
            | input[type="radio"]          | third-radio-option          |
            | select[name="status"]        | unknown                     |
        When I click the "input[type='submit']" element
        Then the "appearSimpleFormPost" page is displayed
