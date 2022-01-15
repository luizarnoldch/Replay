const {Router} = require("express");
const router = Router();
const connection = require("../database.js");

router.get("/:id", (req, res) => {
    const productID = req.params.id;

    connection.query(`CALL SP_PRODUCTOS_BUSCAR(${productID});`, async(error, results) => {
        if(error) console.log(error);
        else{
            let product = results[0];

            connection.query(`CALL SP_PRODUCTOS_LISTA_CATEGORIA(${product[0].idcategory});`, async(error, results) => {
                if(error) console.log(error);
                else{
                    let recomend = results[0];
                    
                    res.render("producto", {producto: product, recomendados: recomend});
                }
            });

        }
    });
});

module.exports = router;
