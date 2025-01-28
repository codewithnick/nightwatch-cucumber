const {Given, Then, When, Before} = require('@cucumber/cucumber');
const { assert } = require('nightwatch');
const Constant = require('../locator/index');
const axios = require('axios');


When(/^I open the Internet page$/, function() {
  return browser.navigateTo(Constant.LINKS.theinternet);
});

Then(/^the title of the Internet Page is ([^"]*)$/, async function(title) {
    return browser.assert.titleEquals(title);
})


When(/^I fetch JavaScript console errors$/, async function () {
    const logs = await browser.pause(5000).getLog('browser');
    const log = logs.map((x)=>x.message);
    console.log("console logs: ",log);
    return this.logs = log;
});



Then(/^I check all links on the page$/, async function() {
    const links = await browser.findElements('a');
    //console.log(links);
    for (const link of links) {
        const href = await browser.elementIdAttribute(link.getId(),'href')
        let tobe=await checkIfLinkReturns200(href);
        if (!tobe) {
            console.error(`Link ${href} did not return 200`);
        }
    }
});

async function checkIfLinkReturns200(link) {
    try {
        const response = await axios.get(link);
        if (response.status !== 200) {
            console.log(`Link ${link} is broken`);
            return false;
        }
        console.log(`Link ${link} is working`);
        return true;
    } catch (error) {
        console.log(`Link ${link} is broken`);
        return false;
    }
}