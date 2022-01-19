const {Router} = require("express");
const router = Router();

router.get("/admin/login", (req, res) => {
    res.render("admin_auth", {layout: false});
});

router.get("/admin", (req, res) =>{
    res.render("admin", {layout: false});
});

router.get("/index/logueado", (req, res) =>{
    res.render("indexLogueado", {layout: false});
});

router.get("/producto/3/logueado", (req, res) =>{
    res.render("producto3Logueado", {layout: false});
});

router.get("/producto/4/logueado", (req, res) =>{
    res.render("producto4Logueado", {layout: false});
});

router.get("/filtro/logueado", (req, res) =>{
    res.render("filtroLogueado", {layout: false});
});

router.get("/carrito/logueado", (req, res) =>{
    res.render("carritoLogueado", {layout: false});
});

module.exports = router;