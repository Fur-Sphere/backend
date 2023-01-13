import express, { json } from 'express'
import 'dotenv/config'
import { WaitListRouter } from './route/waitlist.js'

const port = process.env.PORT || 8000

const app = express()

app.use(json())

app.get('/status', async (req, res, next) => {
	res.json({
		message: 'Server running'
	})
})

app.use('/waitlist', WaitListRouter)

app.listen(port, (err) => {
	if(err) {
		console.error(err)
		console.error('Cannot start server on port ' + port)
	} else {
		console.log('✅ Started server on port ' + port)
	}
})
