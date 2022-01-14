const {Router} = require("express");
const router = Router();

router.get("/:id", (req, res) =>{
    res.render("filtro");
});

module.exports = router;