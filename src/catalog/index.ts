import { defineEndpoint } from '@directus/extensions-sdk';

export default defineEndpoint((router) => {
	router.get('/', (_req, res) => res.send('Hello, World!'));
	
	router.get('/:id', (req, res) => {
		const {id} = req.params;
		res.send(`Hello, World! Your ID is ${id}`);
	})
});
