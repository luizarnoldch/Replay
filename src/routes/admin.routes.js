const {Router} = require("express");
const router = Router();

router.get("/admin/login", (req, res) => {
    res.render("admin_auth", {layout: false});
});

router.get("/admin", (req, res) =>{
    res.render("admin", {layout: false});
});

module.exports = router;