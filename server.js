let express = require('express')
let app = express()

app.get('/', function(req, res) {
  res.send('Maratona Full Cycle 2.0')
})

app.listen(3000, function() {
  console.log('Server up and running on port 3000')
})
