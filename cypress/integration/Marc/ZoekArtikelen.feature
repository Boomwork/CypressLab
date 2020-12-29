Feature: Login op de site http://automationpractice.com/index.php

  Scenario: Zoek Dresses

    Given Open de website
    When Vul 'dresses' in de textbox search _query_top
    When Klik op de button submit_search
    Then De tekst 'dresses' wordt getoond
    Then De tekst showing '1 - 7 of 7' items wordt getoond

  Scenario: Zoek Blouses

    Given Open de website
    When Vul 'blouses' in de textbox search _query_top
    When Klik op de button submit_search
    Then De tekst 'blouses' wordt getoond
    Then De tekst showing '1 - 1 of 1' items wordt getoond

  Scenario: Zoek T-shirts

    Given Open de website
    When Vul 't-shirt' in de textbox search _query_top
    When Klik op de button submit_search
    Then De tekst 't-shirt' wordt getoond
    Then De tekst showing '1 - 1 of 1' items wordt getoond

  Scenario Outline: Zoek Artikelen
    Given Open de website
    When Vul '<Artikel>' in de textbox search _query_top
    When Klik op de button submit_search
    Then De tekst '<Tekst>' wordt getoond
    Then De tekst showing '<Aantal items>' items wordt getoond

    Examples:
      | Artikel | Tekst   | Aantal items |
      | Chiffon | Chiffon | 1 - 2 of 2   |
      | short   | short   | 1 - 4 of 4   |
