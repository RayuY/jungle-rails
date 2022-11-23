
describe('Add to cart', () => {

  beforeEach(() => {
    cy.visit('/')
  });

  it("can click the 'Add to Cart' button for a product on the home page and in doing so their cart increases by one.", () => {
    cy.get(".btn")
      .first()
      .click({ force: true })

    cy.contains(".nav-link", "My Cart (1)")
    
  });

})