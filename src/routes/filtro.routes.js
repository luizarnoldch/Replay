const {Router} = require("express");
const router = Router();

router.get("/", (req, res) =>{
    res.render("filtro");
});

// router.get("/:id", (req, res) =>{
//     res.render("filtro");
// });

module.exports = router;