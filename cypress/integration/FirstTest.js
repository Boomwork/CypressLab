describe('My First Test Suite', () => {
    it('test url works',() =>{
        cy.visit('http://automationpractice.com/index.php');
        cy.get('#search_query_top').click();
        cy.get('#search_query_top').type('Women');
        cy.get('.button-search').click();
        cy.get('#searchbox').submit();
    });
})
import {Given} from "cypress-cucumber-preprocessor/steps"

Given('Open de website {string}', baseUrl => {
    cy.visit(baseUrl);
    cy.get('#search_query_top').click();
    cy.get('#search_query_top').type('Women');
    cy.get('.button-search').click();
    cy.get('#searchbox').submit();
});

