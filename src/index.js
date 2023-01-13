import express from 'express'
import 'dotenv/config'

const port = process.env.PORT || 8000

const app = express()

app.listen(port, (err) => {
	if(err) {
		console.error(err)
		console.error('Cannot start server on port ' + port)
	} else {
		console.log('✅ Started server on port ' + port)
	}
})
