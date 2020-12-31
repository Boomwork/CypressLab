Feature: Login op de site http://automationpractice.com/index.php

  Scenario: Succesvolle login

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button '.login'
    When Login op de site met email 'test1@test.nl' en password 'Tester12345'
    When Klik op de button '#SubmitLogin > span'
    Then De tekst showing 'VoornaamTester AchternaamTester' wordt getoond in de balk '.account > span'


  Scenario: Niet succesvolle login (Verkeerde gebruikersnaam)

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button '.login'
    When Login op de site met email 'test2@test.nl' en password 'Tester12345'
    When Klik op de button '#SubmitLogin > span'
    Then De error tekst showing 'There is 1 error' wordt getoond op de locatie '#center_column > :nth-child(2) > p'


  Scenario: Niet succesvolle login (Verkeerd wachtwoord)

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button '.login'
    When Login op de site met email 'test1@test.nl' en password 'Tester012345'
    When Klik op de button '#SubmitLogin > span'
    Then De error tekst showing 'There is 1 error' wordt getoond op de locatie '#center_column > :nth-child(2) > p'