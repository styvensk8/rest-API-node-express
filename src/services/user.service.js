import { pool } from '../connection.js';

export const viewUser = async (req, res) => {
	const id = req.params.id;
	try {
		const [result] = await pool.query('SELECT * FROM user where id = ?', [id]);
		if (result.length <= 0)
			return res.status(404).json({ message: 'No hay registros con el id ' + id });
		res.json(result[0]);
	} catch (error) {
		return res.status(500).send(error);
	}
};

export const viewUsers = async (req, res) => {
	try {
		const [result] = await pool.query('SELECT * FROM user');
		res.json(result);
	} catch (error) {
		return res.status(500).send(error);
	}
};

export const createUser = async (req, res) => {
	const { name, surname, years, phone, numberDocument, typeDocument } = req.body;
	try {
		const result = await pool.query(
			'INSERT INTO user (name, surname, years, phone, document_number, type_document) VALUES (?,?,?,?,?,?)',
			[name, surname, years, phone, numberDocument, typeDocument]
		);
		res.send('Usuario creado correctamente - Metodo POST');
	} catch (error) {
		return res.status(500).send(error);
	}
};

export const deleteUser = async (req, res) => {
	const id = req.params.id;
	try {
		const [result] = await pool.query('DELETE FROM user WHERE id = ?', [id]);
		if (result.affectedRows <= 0)
			return res.status(404).json({ message: 'No hay registros con el id ' + id });
		res.send('Usuario eliminado - Metodo DELETE');
	} catch (error) {
		return res.status(500).send(error);
	}
};

export const updateUser = async (req, res) => {
	const { id } = req.params;
	const { name, surname, years, phone, numberDocument } = req.body;
	try {
		const [result] = await pool.query(
			'UPDATE user SET name = IFNULL(?, name), surname = IFNULL(?, surname), years = IFNULL(?, years), phone = IFNULL(?, phone), document_number = IFNULL(?,document_number) WHERE id = ?',
			[name, surname, years, phone, numberDocument, id]
		);

		if (result.affectedRows === 0)
			return res.status(404).json({ message: 'No hay registros con el id ' + id });
		res.send('Usuario actualizado - Metodo Update');
	} catch (error) {
		return res.status(500).send(error);
	}
};
