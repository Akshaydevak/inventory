const baseUrl = "http://api-purchase-order-staging.rgcdynamics.org/";
const stagingUrl = "https://api-purchase-order-staging.rgcdynamics.org/";
// const stagingUrl= "http://65.1.61.201:8111/";
// const inventoryBaseUrl = "http://65.1.61.201:8112/";
const inventoryBaseUrl =
    "http://api-inventory-software-staging.rgcdynamics.org/";

const purchasereturnBaseUrl = "http://invtry-purchase-return.rgcdynamics.org/";
const salesOrderBaseUrl = "https://invtry-sales-order-staging.rgcdynamics.org/";
const salesReturnBaseUrl = "https://api-invtry-sales-return.hilalcart.com/";

const postPurchaseurl = stagingUrl + "purchase-order/create-purchase-order";
const generalVerticalList =
    stagingUrl + "purchase-order/list-purchase-order-for-invoice-posting/";
const purchaseOrderType = stagingUrl + "purchase-order/create-purchase-order";

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
const rqstReceivingPatch =
    stagingUrl + "purchase-order/patch-request-form-receiving/";
const purchaseRecievingReceivingPatch =
    stagingUrl + "purchase-order/patch-receiving/";
const additionalGeneratedRequest = stagingUrl +
    "purchase-order/create-additional-system-generated-request-form";
//inventory invoice**************************//****************
const invoiceRead =
    stagingUrl + "purchase-order/read-purchase-order-for-invoice-posting/";
const invoicePost = stagingUrl + "purchase-order/create-purchase-invoice";
const invoiceVerticalList =
    stagingUrl + "purchase-order/list-purchase-order-for-invoice-posting/";

//purchase return+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
const purchaseReturnGeneralPost =
    purchasereturnBaseUrl + "purchase-return/create-purchase-return";
const purchaseReturnInvoicelPost = purchasereturnBaseUrl +
    "purchase-return-invoice/create-purchase-return-invoice";

//sales general..........................................
const salesOederGeneralPost =
    salesOrderBaseUrl + "sales-order/create-sales-order";
const salesGeneralOrderType =
    salesOrderBaseUrl + "sales-order/create-sales-order";
const salesGeneralVerticalList =
    salesOrderBaseUrl + "sales-order/list-sales-order/";
const salesGeneralPost = salesOrderBaseUrl + "sales-order/create-sales-order";
const salesGeneralRead = salesOrderBaseUrl + "sales-order/read-sales-order/";
const salesGeneralDeleateApi =
    salesOrderBaseUrl + "sales-order/read-sales-order/";
const salesGeneralPatchApi =
    salesOrderBaseUrl + "sales-order/read-sales-order/";
//sales invoice tab*************************************
const salesInvoiceReadApi =
    salesOrderBaseUrl + "sales-invoice/read-sales-order-for-invoice/";
const salesInvoicePostApi =
    salesOrderBaseUrl + "sales-invoice/create-sales-invoice";
//sales return tab
const salesReurnVertcalListApi =
    salesReturnBaseUrl + "sales-return/list-sales-return-by-inventory/";
const salesReurnPostApi =
    salesReturnBaseUrl + "sales-return/create-sales-return ";
const salesInvoiceCodeApi =
    salesOrderBaseUrl + "sales-invoice/list-sales-invoice/";
const salesInvoiceRradApi =
    salesOrderBaseUrl + "sales-invoice/read-sales-invoice-for-sales-return/";
const salesReturnInvoiceRradApi =
    salesReturnBaseUrl + "sales-return/read-sales-return/";
const salesReturnInvoiceDeletedApi =
    salesReturnBaseUrl + "sales-return/read-sales-return/";
const salesReturngeneralPAtchApi =
    salesReturnBaseUrl + "sales-return/read-sales-return/";
//Sales return invoice read
const salesReturnInvoiceReadApi =
    salesReturnBaseUrl + "sales-return-invoice/read-sales-return-for-invoice/";
const salesReturnInvoicePostApi =
    salesReturnBaseUrl + "sales-return-invoice/create-sales-return-invoice";

//product module******************************************
const brandListApi = inventoryBaseUrl + "inventory-product/list-brand";
const brandCreateApi = inventoryBaseUrl + "inventory-product/create-brand";
const imagePostApi = inventoryBaseUrl + "inventory-product/upload-image";
const brandReadApi = inventoryBaseUrl + "inventory-product/patch-brand/";
const brandDeleteApi = inventoryBaseUrl + "inventory-product/patch-brand/";
const brandPatchApi = inventoryBaseUrl + "inventory-product/patch-brand/";
const createMaterialApi =
    inventoryBaseUrl + "inventory-product/create-material";
const readMaterialApi = inventoryBaseUrl + "inventory-product/patch-material/";
const patchMaterialApi = inventoryBaseUrl + "inventory-product/patch-material/";
const deleteMaterialApi =
    inventoryBaseUrl + "inventory-product/patch-material/";
const createDivisionApi =
    inventoryBaseUrl + "inventory-product/create-division";
const readDivisionApi = inventoryBaseUrl + "inventory-product/patch-division/";
const patchDivisionApi = inventoryBaseUrl + "inventory-product/patch-division/";
const deleteDivisionApi =
    inventoryBaseUrl + "inventory-product/patch-division/";
const createStaticApi =
    inventoryBaseUrl + "inventory-product/create-static-group";
const listStaticApi = inventoryBaseUrl + "inventory-product/list-static-group";
const readStaticApi =
    inventoryBaseUrl + "inventory-product/patch-static-group/";
const deleteStaticApi =
    inventoryBaseUrl + "inventory-product/patch-static-group/";
const patchStaticApi =
    inventoryBaseUrl + "inventory-product/patch-static-group/";
const uomGroupCreateApi =
    inventoryBaseUrl + "inventory-product/create-uom-group";
const listUomGroupApi = inventoryBaseUrl + "inventory-product/list-uom-group";
const readUomGroupApi = inventoryBaseUrl + "inventory-product/patch-uom-group/";
const deleteUomGroupApi =
    inventoryBaseUrl + "inventory-product/patch-uom-group/";
const patchUomGroupApi =
    inventoryBaseUrl + "inventory-product/patch-uom-group/";
const listCategoryGroupApi =
    inventoryBaseUrl + "inventory-product/list-category-by-division/";
const listCategoryAllGroupApi =
    inventoryBaseUrl + "inventory-product/list-category";
const createCategoryGroupApi =
    inventoryBaseUrl + "inventory-product/create-category";
const readCategoryGroupApi =
    inventoryBaseUrl + "inventory-product/patch-category/";
const deleteCategoryGroupApi =
    inventoryBaseUrl + "inventory-product/patch-category/";
const listSubCategoryGroupApi =
    inventoryBaseUrl + "inventory-product/list-sub-category-by-parent/";
const createGroupApi = inventoryBaseUrl + "inventory-product/create-group";
const listGroupApi =
    inventoryBaseUrl + "inventory-product/list-group-by-category/";
const readGroupApi = inventoryBaseUrl + "inventory-product/patch-group/";
const deleteGroupApi = inventoryBaseUrl + "inventory-product/patch-group/";
const patchGroupApi = inventoryBaseUrl + "inventory-product/patch-group/";
const createBaseUomGroupApi = inventoryBaseUrl + "inventory-product/create-uom";
const listBaseUomGroupApi =
    inventoryBaseUrl + "inventory-product/list-uom-by-uom-grp/";
const readBaseUomGroupApi = inventoryBaseUrl + "inventory-product/patch-uom/";


//item creation
const listItemVerticalListApi = inventoryBaseUrl + "inventory-product/list-item ";

