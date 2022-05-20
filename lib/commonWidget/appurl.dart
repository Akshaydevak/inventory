const baseUrl = "http://api-purchase-order-staging.rgcdynamics.org/";
const stagingUrl="http://65.1.61.201:8111/";
const postPurchaseurl = baseUrl + "purchase-order/create-purchase-order";
const purchaseOrdertype = baseUrl + "purchase-order/create-purchase-order";
const purchaseCurrentStockqty =
    baseUrl + "inventory-stock/get-stock-quantity-by-variant/testing002/aa";
const generalPurchaseRead = baseUrl + "purchase-order/read-purchase-order/";
const generalPurchasePatch = baseUrl + "purchase-order/read-purchase-order/";

//*************purchaseRecievingTAb screen
const purchaseRecievingRead=stagingUrl+"purchase-order/read-receiving-by-purchase-order/";