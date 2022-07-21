const baseUrl = "http://api-purchase-order-staging.rgcdynamics.org/";
const stagingUrl = "http://api-purchase-order-staging.rgcdynamics.org/";
// const stagingUrl= "http://65.1.61.201:8111/";
// const inventoryBaseUrl = "http://65.1.61.201:8112/";
const inventoryBaseUrl = "http://api-inventory-software-staging.rgcdynamics.org";
const purchasereturnBaseUrl = "http://invtry-purchase-return.rgcdynamics.org/";


const postPurchaseurl = stagingUrl + "purchase-order/create-purchase-order";
const generalVerticalList = stagingUrl + "purchase-order/list-purchase-order-for-invoice-posting/";
const purchaseOrderType = stagingUrl +"purchase-order/create-purchase-order";

const purchaseOrdertype = baseUrl + "purchase-order/create-purchase-order";
const purchaseCurrentStockqty =
    stagingUrl + "inventory-stock/get-stock-quantity-by-variant/testing002/aa";
const generalPurchaseRead = stagingUrl + "purchase-order/read-purchase-order/";
const generalPurchasePatch = baseUrl + "purchase-order/read-purchase-order/";
const vendorCodeUrl =
    "https://api-newpartner-uat.ahlancart.com/new_partner/vendor-partner/list";
//*************purchaseRecievingTAb screen
const purchaseRecievingRead =
    stagingUrl + "purchase-order/read-receiving-by-purchase-order/";
const purchaseRecievingPatch = stagingUrl + "purchase-order/patch-receiving/";
const generatedPo =
    stagingUrl + "purchase-order/create-missing-system-generated-lpo";
const additionalGeneratedPo =
    stagingUrl + "purchase-order/create-additional-system-generated-lpo ";

//***********request form tab****************
const requestFormRead = stagingUrl + "purchase-order/patch-request-form/";
const requestFormCreate = stagingUrl + "purchase-order/create-request-form";
const requestFormOrderType = stagingUrl + "purchase-order/create-request-form";
const requestFormPatch = stagingUrl + "purchase-order/patch-request-form/";
const requestVerticalList = stagingUrl + "purchase-order/list-request-form/";
//*********************request receiving form*******************
const rqstReceivingRead =
    stagingUrl + "purchase-order/read-receiving-by-request-form/";
const rqstReceivingPatch = stagingUrl + "purchase-order/patch-request-form-receiving/";
const purchaseRecievingReceivingPatch = stagingUrl + "purchase-order/patch-receiving/";
const additionalGeneratedRequest = stagingUrl +
    "purchase-order/create-additional-system-generated-request-form";
//inventory invoice**************************//****************
const invoiceRead =
    stagingUrl + "purchase-order/read-purchase-order-for-invoice-posting/";
const invoicePost = stagingUrl + "purchase-order/create-purchase-invoice";
const invoiceVerticalList = stagingUrl + "purchase-order/list-purchase-order-for-invoice-posting/";

//purchase return+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
const purchaseReturnGeneralPost = purchasereturnBaseUrl + "purchase-return/create-purchase-return";
const purchaseReturnInvoicelPost = purchasereturnBaseUrl + "purchase-return-invoice/create-purchase-return-invoice";