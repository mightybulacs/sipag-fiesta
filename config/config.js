'use strict';

const _    = require('lodash');
const path = require('path');

const config = {
    APP_NAME: 'Sipag Fiesta',

    FRONTEND_URL: 'sipag-fiesta.loc',

    PORT: 8000,

    use: (env) => {
        _.assign(config, require(__dirname + '/env/' + env));
        return config;
    },
}

if (!process.env.NODE_ENV) {
    process.env.NODE_ENV = 'local';
}

module.exports = config.use(process.env.NODE_ENV);