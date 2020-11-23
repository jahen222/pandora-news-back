module.exports = ({ env }) => ({
  defaultConnection: "default",
  connections: {
    default: {
      connector: "bookshelf",
      settings: {
        client: "mysql",
        host: env('PRODUCTION_DATABASE_HOST'),
        port: env.int('PRODUCTION_DATABASE_PORT'),
        database: env('PRODUCTION_DATABASE_NAME'),
        username: env('PRODUCTION_DATABASE_USERNAME'),
        password: env('PRODUCTION_DATABASE_PASSWORD'),
        ssl: { rejectUnauthorized: false },
      },
      options: {},
    },
  },
});
