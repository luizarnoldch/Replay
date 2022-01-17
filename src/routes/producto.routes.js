const {Router} = require("express");
const router = Router();
const connection = require("../database.js");

// router.get("/:id", (req, res) => {
//     res.render("producto");
// });

router.get("/3", (req, res) => {
    res.render("producto3");
});
router.get("/4", (req, res) => {
    res.render("producto4");
});
router.get("/5", (req, res) => {
    res.render("producto5");
});
router.get("/6", (req, res) => {
    res.render("producto6");
});
router.get("/7", (req, res) => {
    res.render("producto7");
});
router.get("/8", (req, res) => {
    res.render("producto8");
});
router.get("/9", (req, res) => {
    res.render("producto9");
});
router.get("/10", (req, res) => {
    res.render("producto10");
});
router.get("/11", (req, res) => {
    res.render("producto11");
});
router.get("/12", (req, res) => {
    res.render("producto12");
});
router.get("/13", (req, res) => {
    res.render("producto13");
});
router.get("/14", (req, res) => {
    res.render("producto14");
});

module.exports = router;
