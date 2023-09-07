const db = require('../models/db_con');

class Purchase {

    constructor(id, product_id, paid_qty) {
        this.id = id;
        this.product_id = poduct_id;
        this.paid_qty = paid_qty;
    }

    static newPurchase(product_id, qty) {
        // create new purchase in purchases
        return db.one(`
        INSERT INTO paid (product_id, paid_qty)
        VALUES (${product_id}, ${qty})
        returning id
        `)
    }

}
module.exports = Paid;
