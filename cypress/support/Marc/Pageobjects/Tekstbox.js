class tekstboxPage {
    static fillTekstinTextbox(tekstbox) {
        return cy.xpath("//input[@id = '" + tekstbox + "']");
    }

    static getspanTekst(tekst) {
        return cy.xpath("//span[contains(.,'" + tekst + "')]");
    }

    static getparagraphTekst(tekst) {
        return cy.xpath("//p[contains(.,'" + tekst + "')]");
    }
}

export default tekstboxPage