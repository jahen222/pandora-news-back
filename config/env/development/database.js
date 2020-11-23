module.exports = ({ env }) => ({
  defaultConnection: "default",
  connections: {
    default: {
      connector: "bookshelf",
      settings: {
        client: "mysql",
        host: env('DEVELOPMENT_DATABASE_HOST', '127.0.0.1'),
        port: env.int('DEVELOPMENT_DATABASE_PORT', 3306),
        database: env('DEVELOPMENT_DATABASE_NAME', 'pandora_news'),
        username: env('DEVELOPMENT_DATABASE_USERNAME', 'root'),
        password: env('DEVELOPMENT_DATABASE_PASSWORD', ''),
        ssl: env.bool('DEVELOPMENT_DATABASE_SSL', false),
      },
      options: {},
    },
  },
});
