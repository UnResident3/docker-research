const express = require('express');
const client = require('prom-client');

const app = express();
const host = '0.0.0.0';
const port = 3000;

const collectDefaultMetrics = client.collectDefaultMetrics;
collectDefaultMetrics({ timeout: 1000 });
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

app.get('/metrics', (req, res) => {
    res.contentType(client.register.contentType);
    res.end(client.register.metrics());
});

app.listen(port, host, () => console.log(`Example app listening on port ${port}!`));
