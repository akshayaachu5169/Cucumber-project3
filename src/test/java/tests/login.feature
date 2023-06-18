#Author:Akshaya...email...domain..
@login
Feature: validate login page

  Scenario Outline: validate login page with credentials
    Given open browser as "<browser>"
    When enter url as "<app url>"
    And enter username as "<username>"
    When enter password as "<password>"
    And click login button
    Then verify the welcome page as "<welcomemsg>" in header
    But dont click remember password

    Examples: 
      | browser | app url  | username | password | welcomemsg  |
      | chrome  | vcentry  | Akshaya  | pass@123 | welcomemsg1 |
      | firefox | flipkart | Aswin    | pass@456 | welcomemsg2 |
      | IE      | amazon   | Aakash   | pass@789 | welcomemsg3 |
