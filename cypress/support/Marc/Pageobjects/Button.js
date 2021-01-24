class buttonPage {
    static getButton(button) {
        return cy.xpath("//*[self::button or self::a][contains(., '" + button + "') or contains(@id,'" + button + "')]");
    }

}

export default buttonPage