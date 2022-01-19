const {Router} = require("express");
const router = Router();
const connection = require("../database.js");

router.get("/", (req, res) =>{
    res.render("index");
});

module.exports = router;
