import express, { json } from 'express'
import 'dotenv/config'
import { WaitListRouter } from './route/waitlist.js'
import cors from 'cors'

const port = process.env.PORT || 8000

const corsOptions = {
	origin: 'https://fursphere.com'
}

const app = express()

app.use(cors(corsOptions))

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
