const {Router} = require("express");
const router = Router();

router.get("/:id", (req, res) => {
    res.render("producto");
});

module.exports = router;