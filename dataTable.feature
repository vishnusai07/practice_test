Feature: Adding new User to the Data Table

  Background:
    Given navigates to home page


  Scenario Outline:
    Given user should on User List Table
    When add new users to the Table with the following details:
      | FirstName   | LastName   | UserName   | Password   | Company   | Role   | Email   | Mobile   |
      | <FirstName> | <LastName> | <UserName> | <Password> | <Company> | <Role> | <Email> | <Mobile> |

    Then validate the users are created in the User List Table

    Examples:
      | FirstName | LastName | UserName | Password | Company     | Role     | Email             | Mobile  |
      | FName1    | LName1   | User1    | Pass1    | Company AAA | Admin    | admin@mail.com    | 0825551 |
      | FName2    | LName2   | User2    | Pass2    | Company BBB | Customer | customer@mail.com | 083444  |