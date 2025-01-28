module.exports = {
    LINKS:{
        ultimateqa: 'http://ultimateqa.com/automation',
        theinternet: 'https://the-internet.herokuapp.com/'
    },
    anchorText:(text)=>{
        return `//a[contains(text(), "${text}")]`;
    }

}