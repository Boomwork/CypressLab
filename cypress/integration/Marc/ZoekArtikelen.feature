Feature: Zoeken van artikelen

  Scenario: Zoek Dresses

    Given Open de website 'http://automationpractice.com/index.php'
    When Vul de tekst 'dresses' in de tekstbox 'search_query_top'
    When Klik op de button 'Search'
    Then De spantekst 'dresses' wordt getoond
    Then De spantekst '7 results have been found.' wordt getoond

  Scenario: Zoek Blouses

    Given Open de website 'http://automationpractice.com/index.php'
    When Vul de tekst 'blouses' in de tekstbox 'search_query_top'
    When Klik op de button 'Search'
    Then De spantekst 'blouses' wordt getoond
    Then De spantekst '1 result has been found.' wordt getoond

  Scenario: Zoek T-shirts

    Given Open de website 'http://automationpractice.com/index.php'
    When Vul de tekst 't-shirt' in de tekstbox 'search_query_top'
    When Klik op de button 'Search'
    Then De spantekst 't-shirt' wordt getoond
    Then De spantekst '1 result has been found.' wordt getoond

  Scenario Outline: Zoek Artikelen
    Given Open de website 'http://automationpractice.com/index.php'
    When Vul de tekst '<Artikel>' in de tekstbox 'search_query_top'
    When Klik op de button 'Search'
    Then De spantekst '<Tekst>' wordt getoond
    Then De spantekst '<Aantal items>' wordt getoond

    Examples:
      | Artikel | Tekst   | Aantal items              |
      | Chiffon | Chiffon | 2 results have been found |
      | short   | short   | 4 results have been found |



