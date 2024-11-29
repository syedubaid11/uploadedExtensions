import { defineEndpoint } from '@directus/extensions-sdk';

export default defineEndpoint({
	id: 'new-endpoint',
	handler: async (router) => {
		router.get('/:name', (req, res) => {
			const { name } = req.params;
			res.send(`Hello, ${name}!`);
		});
	}
});
