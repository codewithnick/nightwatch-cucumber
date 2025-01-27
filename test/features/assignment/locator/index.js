module.exports = {
    LINKS:{
        ultimateqa: 'http://ultimateqa.com/automation',
    },
    anchorText:(text)=>{
        return `//a[contains(text(), "${text}")]`;
    }

}