import {Then, When} from "cypress-cucumber-preprocessor/steps"
import tekstboxPage from "../Marc/Pageobjects/Tekstbox";

When('Vul de tekst {string} in de tekstbox {string}', (tekst, tekstbox) => {
    tekstboxPage.fillTekstinTextbox(tekstbox).type(tekst);
})

Then('De spantekst {string} wordt getoond', tekst => {
    tekstboxPage.getspanTekst(tekst).should('contain', tekst);
})

Then('De paragraaftekst {string} wordt getoond', (tekst) => {
    tekstboxPage.getparagraphTekst(tekst).should('contain', tekst);
})