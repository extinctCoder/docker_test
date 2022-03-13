module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '64254817ea9bb2a248b3b6fd4920ebe7'),
  },
});
