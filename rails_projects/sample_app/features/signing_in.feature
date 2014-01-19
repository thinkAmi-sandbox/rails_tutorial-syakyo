Feature: Signing in

  Senario: Unsucessful signin
    Given a user visits the signin page
    When he submits invalid signin information
    Then he should see an error message

  Senario: Successful signin
    Given a user visits the siginin page
      And the user has an account
    When the user submits vaild signin information
    Then he should see his profile page
     And he should see a signout link
