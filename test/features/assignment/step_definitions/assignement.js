const {Given, Then, When, Before} = require('@cucumber/cucumber');
const { assert } = require('nightwatch');
const Constant = require('../locator/index');


When(/^I open the Automation Practice page$/, function() {
  return browser.navigateTo(Constant.LINKS.ultimateqa);
});

Then(/^the title of ultimateqa is "([^"]*)"$/, async function(title) {
    return browser.assert.titleEquals(title);
})

When(/^I click on "([^"]*)"$/, async function(text) {
    //find the element by the text
    return browser.useXpath()
    .click(Constant.anchorText(text))
    .useCss(); 
});

Then(/^I am redirected to "([^"]*)"$/, async function(url) {
    return browser.assert.urlEquals(url);
});

When(/^I fetch JavaScript console errors$/, async function () {
    const logs = await browser.pause(5000).getLog('browser');
    console.log(logs);
    return this.logs = logs;
});

Then(/^The logs should be empty$/, function() {
    return assert.strictEqual(this.logs.length, 0);
});