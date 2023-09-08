const db = require('../models/db_con');

class Product {

    constructor(id, name,inventory) {
        this.id = id;
        this.name = name;
        this.inventory = inventory;

    }

    
    static inventoryChange(productid, qty) {
        // needs to remove/add inventory to specific item
        console.log(`This is productid: ${productid}`);
        return db.result(`
        UPDATE items
        SET inventory = inventory + ${qty}
        WHERE id=${productid}
        `)
        
    }
    
    
}

module.exports = Product;
