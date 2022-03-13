module.exports = ({ env }) => ({
  // host: env('HOST', '0.0.0.0'),
  url: env("WEBSITE_URL", "https://docker-test-007.herokuapp.com/"),
  port: env.int("PORT", 1337),
  app: {
    keys: env.array("APP_KEYS"),
  },
});
