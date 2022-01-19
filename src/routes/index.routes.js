const {Router} = require("express");
const router = Router();
const connection = require("../database.js");

router.get("/", (req, res) =>{
    let tech, ofert, home, beuty;
    /*
    connection.query(`CALL SP_PRODUCTOS_LISTA_CATEGORIA(6);`, async(error, results) => {
        if(error) console.log(error);
        else{
            tech = results[0];
            
            connection.query(`CALL SP_PRODUCTOS_LISTA_CATEGORIA(5);`, async(error, results) => {
                if(error) console.log(error);
                else{
                    home = results[0];
                    
                    connection.query(`CALL SP_PRODUCTOS_LISTA_CATEGORIA(7);`, async(error, results) => {
                        if(error) console.log(error);
                        else{
                            beuty = results[0];
                            
                            res.render("index", {oferta: null, tecnologia: tech, hogar: home, belleza: beuty});
                        }
                    });

                }
            });

        }
    });
    */
});

module.exports = router;
