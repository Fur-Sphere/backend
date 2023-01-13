import { Router } from "express";
import prisma from "../lib/prisma/index.js";

const router = Router()

router.post('/', async (req, res, next) => {
	const { name, email, state, city, isPetOwner, isTrainer, isVet } = req.body

	try {
		const newEntry = await prisma.waitlist.create({
			data: {
				name: name,
				email: email,
				state: state,
				city: city,
				isPetOwner: isPetOwner,
				isTrainer: isTrainer,
				isVet: isVet
			}
		})

		res.json({
			message: 'Success',
			newEntry
		})
	}

	catch(err) {
		console.log(err)

		if(err.code === 'P2002') {
			err.message = `${err.meta.target[0]} must be unique`
		}

		res.status(400).json({
			error: 'Cannot process request',
			message: err.message
		})
	}
})

export { router as WaitListRouter }