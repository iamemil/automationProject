package hu.unideb.inf;

import io.cucumber.java.en.When;

public class NewsletterStepDefs extends AbstractStepDefs {


    @When("the Newsletter button is clicked")
    public void theNewsletterButtonIsClicked() {
        homePage.clickNewsLetterButton();
    }


}
