import {defineEndpoint} from '@directus/extensions';

export default defineEndpoint({
    id:'project',
    handler: async (router) => {
        // Example endpoint logic
        router.get('/',(_,res)=>{
            res.send("Hello from this endpoint")
        })
    },
})