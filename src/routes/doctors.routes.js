import { Router } from "express"
import { pool } from "../connection.js"

const router = Router()

router.get("/", async (req, res) => {
    const [result] = await pool.query('SELECT * FROM doctor')
    res.json(result)
})

export default router
