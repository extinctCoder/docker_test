module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '6218a917e9c820de963a821fb1298f42'),
  },
});
