Feature: Login op de site http://automationpractice.com/index.php

  Scenario: Login op de site http://automationpractice.com/index.php

    Given Open de website
    When Vul dresses in de textbox search _query_top
    When Klik op de button submit_search
    Then De tekst dresses wordt getoond
    Then De tekst showing 1 - 7 of 7 items wordt getoond


