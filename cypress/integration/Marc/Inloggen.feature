Feature: Login op de site http://automationpractice.com/index.php

  Scenario: Succesvolle login

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button 'Sign in'
    When Vul de tekst 'test1@test.nl' in de tekstbox 'email'
    When Vul de tekst 'Tester12345' in de tekstbox 'passwd'
    When Klik op de button 'SubmitLogin'
    Then De spantekst 'VoornaamTester AchternaamTester' wordt getoond


  Scenario: Niet succesvolle login (Verkeerde gebruikersnaam)

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button 'Sign in'
    When Vul de tekst 'test123@test.nl' in de tekstbox 'email'
    When Vul de tekst 'Tester12345' in de tekstbox 'passwd'
    When Klik op de button 'SubmitLogin'
    Then De paragraaftekst 'There is 1 error' wordt getoond


  Scenario: Niet succesvolle login (Verkeerd wachtwoord)

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button 'Sign in'
    When Vul de tekst 'test1@test.nl' in de tekstbox 'email'
    When Vul de tekst 'Tester1234567' in de tekstbox 'passwd'
    When Klik op de button 'SubmitLogin'
    Then De paragraaftekst 'There is 1 error' wordt getoond