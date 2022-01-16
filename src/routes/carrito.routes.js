const {Router} = require("express");
const router = Router();

router.get("/1", (req, res) =>{
    res.render("carrito");
});

router.get("/2", (req, res) =>{
    res.render("carrito");
});

router.get("/3", (req, res) =>{
    res.render("carrito");
});

module.exports = router;