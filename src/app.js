const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Server is running & up!');
});

app.get('/vulnerable-api', (req, res) => {
    try {
        // This is just example vulnerable API endpoint
        const query = req.query.q || "world";
        res.send('Ouch: ' + eval(query));
        console.log('Ouch: ' + query);
    } catch(e) {
        res.send("I'm okay");
        console.log("Error occured!");
    }
});

app.listen(9000, () => {
    console.log('Vulnerable app listening on port: 9000');
});
