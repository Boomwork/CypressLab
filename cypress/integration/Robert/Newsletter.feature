Feature: Newsletter

  Insert email for newsletter

  Background:
    Given Open de website 'http://automationpractice.com/index.php'

  @smoke
  Scenario: Insert an email for the newsletter
    When Vul de tekst 'tst@tst.com' in de tekstbox 'newsletter-input'
    And Klik op de button 'submitNewsletter'
    Then De paragraaftekst 'Newsletter' wordt getoond

  Scenario: Insert an email for the newsletter
    When Vul de tekst 'test@test.com' in de tekstbox 'newsletter-input'
    And Klik op de button 'submitNewsletter'
    Then De paragraaftekst 'Newsletter' wordt getoond
