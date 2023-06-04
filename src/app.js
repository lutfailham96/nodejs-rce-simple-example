const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Server is running & up!');
});

app.get('/vulnerable-api', (req, res) => {
    try {
        // This is just example
        const query = req.query.q || "world";
        res.send('Hello ' + eval(query));
        console.log('Query: ' + query);
    } catch(e) {
        console.log("Error occured!");
    }
});

app.listen(9000, () => {
    console.log('Vulnerable app listening on port: 9000');
});
