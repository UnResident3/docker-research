const express = require('express');
const app = express();
const host = '0.0.0.0';
const port = 3000;


class response {
    constructor(message) {
        this.message = message;
    }

    get msg() {
        return this.message;
    }
    
}

app.get('/', (req, res) => {
    res.type('application/json');
    a = new response('Hello World!');
    res.send(JSON.stringify(a));
});

app.listen(port, host, () => console.log(`Example app listening on port ${port}!`));
