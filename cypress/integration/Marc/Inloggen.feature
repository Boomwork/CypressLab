@Fail
Feature: Login op de site http://automationpractice.com/index.php

  @Succes
  Scenario: Succesvolle login

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button 'Sign in'
    When Vul de tekst 'test2@test.nl' in de tekstbox 'email'
    When Vul de tekst 'Tester12345' in de tekstbox 'passwd'
    When Klik op de button 'SubmitLogin'
    Then De spantekst 'Tester deTest' wordt getoond

  @Fail
  Scenario: Niet succesvolle login (Verkeerde gebruikersnaam)

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button 'Sign in'
    When Vul de tekst 'test123@test.nl' in de tekstbox 'email'
    When Vul de tekst 'Tester12345' in de tekstbox 'passwd'
    When Klik op de button 'SubmitLogin'
    Then De paragraaftekst 'There is 1 error' wordt getoond

  @Fail
  Scenario: Niet succesvolle login (Verkeerd wachtwoord)

    Given Open de website 'http://automationpractice.com/index.php'
    When Klik op de button 'Sign in'
    When Vul de tekst 'test1@test.nl' in de tekstbox 'email'
    When Vul de tekst 'Tester1234567' in de tekstbox 'passwd'
    When Klik op de button 'SubmitLogin'
    Then De paragraaftekst 'There is 1 error' wordt getoond


  Scenario: Inloggen m.b.v. Testdata uit Json

    When Gebruik de testdata uit de json file om in te loggen


  Scenario: Wegschrijven users waarmee de test wordt uitgevoerd

    When Schrijf de users en passwords weg die gebruikt worden om mee in te loggen




