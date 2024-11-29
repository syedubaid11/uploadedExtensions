import { defineEndpoint } from '@directus/extensions-sdk';

export default defineEndpoint({
	id: 'products',
	handler: async (router) => {
		router.get('/', (_, res) => {
			res.send('Hello from custom endpoint!');
		});

		router.get('/products', (_, res) => {
			res.send('Products endpoint');
		})
	}
});