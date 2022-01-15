const {Router} = require("express");
const router = Router();
const passport = require('passport');
const { isLoggedIn, isNotLoggedIn } = require('../lib/auth');

// SIGNUP
router.get('/registro', isNotLoggedIn, (req, res) => {
    res.render('auten/registro');
});

router.post('/registro', isNotLoggedIn, passport.authenticate('local.signup', {
    successRedirect: '/usuario',
    failureRedirect: '/registro',
    failureFlash: true
}));

// SINGIN
router.get('/ingreso', isNotLoggedIn, (req, res) => {
    res.render('auten/ingreso');
});

router.post('/ingreso', isNotLoggedIn, (req, res, next) => {
    /*
        req.check('codigo', 'El usuario es requerido').notEmpty();
        req.check('contrasena', 'Contraseña requerida').notEmpty();
        /const errors = req.validationErrors();
        if (errors.length > 0) {
            //req.flash('message', errors[0].msg);
            res.redirect('/ingreso');
        }
    */
    passport.authenticate('local.signin', {
        successRedirect: '/usuario',
        failureRedirect: '/ingreso',
        failureFlash: true
    })(req, res, next);
});

router.get('/salir', isLoggedIn, (req, res) => {
    req.logOut();
    res.redirect('/');
});


router.get('/usuario', isLoggedIn, async(req, res) => {
    const rol = req.user.id_rol;

    if (rol == 1) {
        res.redirect('/perfil');
    } else if (rol == 2) {
        res.redirect('/admin');
    }
});

module.exports = router;
