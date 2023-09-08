const Product = require('../models/product');
const Paid = require('../models/paid');


async function simulatePaid(req, res) {
    console.log(req.body);
    
    // needs to add purchase record into paid for specific item
    const paidId = await Paid.newPaid(req.body.productid, req.body.qty);
    
    await Product.inventoryChange(req.body.productid, -req.body.qty);
    
    
    res.send(`Paid ID: ${paidId.id}`);
    
    
}

module.exports = {
    simulatePaid
} 
