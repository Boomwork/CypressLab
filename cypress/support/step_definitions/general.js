import {Given} from "cypress-cucumber-preprocessor/steps"

Given('Open de website {string}', baseUrl => {
    cy.visit('baseUrl')
})