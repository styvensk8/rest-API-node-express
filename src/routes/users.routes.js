import { Router } from 'express';
import {
	viewUser,
	viewUsers,
	createUser,
	deleteUser,
	updateUser
} from '../services/user.service.js';

const router = Router();

router.get('/:id', viewUser);
router.get('/', viewUsers);
router.post('/', createUser);
router.delete('/:id', deleteUser);
router.patch('/:id', updateUser);

export default router;
