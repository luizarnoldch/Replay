const {Router} = require("express");
const router = Router();

router.get("/1", (req, res) => {
    res.render("pefil");
});

module.exports = router;