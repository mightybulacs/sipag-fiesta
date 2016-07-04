'use strict';

const proc_id = process.env.cpu_number || 0;

module.exports = {
    ENV: 'local',

    CORS:  {
        allowed_headers: 'Content-Type, Accept',
        allowed_origins_list: [
            'sipag-fiesta.loc'
        ],
        allowed_methods: 'GET, POST, PUT, DELETE',
        allow_credentials: true
    },

    MASTER_DB: {
        host: 'localhost',
        user: 'sipag',
        password: 'pwds1p4g',
        database: 'sipagdb',
        connectionLimit: 200
    },

    SLAVE_DB: {
        host: 'localhost',
        user: 'sipag',
        password: 'pwds1p4g',
        database: 'sipagdb',
        connectionLimit: 200
    }
}