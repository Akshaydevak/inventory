const baseUrl = "http://api-purchase-order-staging.rgcdynamics.org/";
const stagingUrl="http://65.1.61.201:8111/";
const inventoryBaseUrl="http://65.1.61.201:8112/";
const postPurchaseurl = stagingUrl + "purchase-order/create-purchase-order";
const purchaseOrdertype = baseUrl + "purchase-order/create-purchase-order";
const purchaseCurrentStockqty =
    stagingUrl + "inventory-stock/get-stock-quantity-by-variant/testing002/aa";
const generalPurchaseRead = stagingUrl + "purchase-order/read-purchase-order/";
const generalPurchasePatch = baseUrl + "purchase-order/read-purchase-order/";

//*************purchaseRecievingTAb screen
const purchaseRecievingRead=stagingUrl+"purchase-order/read-receiving-by-purchase-order/";
const purchaseRecievingPatch=stagingUrl+"purchase-order/patch-receiving/";
const generatedPo=stagingUrl+"purchase-order/create-missing-system-generated-lpo";
const additionalGeneratedPo=stagingUrl+"purchase-order/create-additional-system-generated-lpo ";