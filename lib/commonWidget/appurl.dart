const baseUrl = "https://api-purchase-order-staging.rgcdynamics.org/";

const stagingUrl = "https://api-purchase-order-staging.rgcdynamics.org/";
// const stagingUrl= "http://65.1.61.201:8111/";
// const inventoryBaseUrl = "http://65.1.61.201:8112/";
const inventoryBaseUrl =
    "https://api-inventory-software-staging.rgcdynamics.org/";

const inventoryListApi =
    "https://api-rgc-organization.hilalcart.com/legalunit/business-unit-list?legal_unit=";
const purchasereturnBaseUrl = "https://invtry-purchase-return.rgcdynamics.org/";
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
const generalPurchasePatch = stagingUrl + "purchase-order/read-purchase-order/";
const vendorCodeUrl =
    "https://api-newpartner-uat.ahlancart.com/new_partner/vendor-partner/list";
//*************purchaseRecievingTAb screen
const purchaseRecievingRead =
    stagingUrl + "purchase-order/read-receiving-by-purchase-order/";
const purchaseRecievingPatch = stagingUrl + "purchase-order/patch-receiving/";
const generatedPo =
    stagingUrl + "purchase-order/create-missing-system-generated-lpo";
const additionalGeneratedPo =
    stagingUrl + "purchase-order/create-additional-system-generated-lpo";

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
const purchaseReturnPurchaseInvoiceidReadApi =
    baseUrl + "purchase-order/list-purchase-invoice-for-purchase-return/";
const purchaseReturnInvoiceRead = purchasereturnBaseUrl +
    "purchase-return-invoice/read-purchase-return-order-for-invoice/";
const purchaseReturnInvoicelPost = purchasereturnBaseUrl +
    "purchase-return-invoice/create-purchase-return-invoice";
const purchaseReturnGeneralreadApi =
    purchasereturnBaseUrl + "purchase-return/read-purchase-return/";
const purchaseReturnGeneralPatchApi =
    purchasereturnBaseUrl + "purchase-return/read-purchase-return/";
const purchaseReturnGeneralVerticalListApi =
    purchasereturnBaseUrl + "purchase-return/list-purchase-return-order/";

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
    salesReturnBaseUrl + "sales-return/create-sales-return";
const salesInvoiceCodeApi =
    salesOrderBaseUrl + "sales-invoice/list-sales-invoice/";
const salesInvoiceRradApi =
    salesOrderBaseUrl + "sales-invoice/read-sales-invoice-for-sales-return/";
const salesReturnInvoiceRradApi =
    salesReturnBaseUrl + "sales-return/read-sales-return/";
const salesReturnInvoiceDeletedApi =
    salesReturnBaseUrl + "sales-return/read-sales-return/";
const salesReturnOrderMode =
    salesReturnBaseUrl + "sales-return/create-sales-return";
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
const listMaterialGroupApi =
    inventoryBaseUrl + "inventory-product/list-material";
const listDevisionApi = inventoryBaseUrl + "inventory-product/list-division";
const listBrandApi = inventoryBaseUrl + "inventory-product/list-brand";
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
const listAllGroupApi = inventoryBaseUrl + "inventory-product/list-group";

const readGroupApi = inventoryBaseUrl + "inventory-product/patch-group/";
const deleteGroupApi = inventoryBaseUrl + "inventory-product/patch-group/";
const patchGroupApi = inventoryBaseUrl + "inventory-product/patch-group/";
const createBaseUomGroupApi = inventoryBaseUrl + "inventory-product/create-uom";
const listBaseUomGroupApi =
    inventoryBaseUrl + "inventory-product/list-uom-by-uom-grp/";
const listBaseAllUomGroupApi = inventoryBaseUrl + "inventory-product/list-uom";
const readBaseUomGroupApi = inventoryBaseUrl + "inventory-product/patch-uom/";
const frameWorkListApi =
    inventoryBaseUrl + "inventory-product/list-newvariantframework";
const frameWorkReadApi =
    inventoryBaseUrl + "inventory-product/read-all-data-variant-framework/";
//item creation
const listItemVerticalListApi =
    inventoryBaseUrl + "inventory-product/list-item";
const createItemApi = inventoryBaseUrl + "inventory-product/create-item";
const readItemApi = inventoryBaseUrl + "inventory-product/read-item/";
//variant detail page
const createLinkedItemtApi =
    inventoryBaseUrl + "inventory-product/create-linkitem";
const readLinkedItemtApi =
    inventoryBaseUrl + "inventory-product/read-linkitem/";
const readLinkedItemVerticalApi =
    inventoryBaseUrl + "inventory-product/list-variant-under-variants";
const listVariantApi =
    inventoryBaseUrl + "inventory-product/list-variant-by-inventory/";
const listLinkedItemApi =
    inventoryBaseUrl + "inventory-product/list-item-linkeditem/";
const readVariantApi = inventoryBaseUrl + "inventory-product/read-variant/";
const salesListApi = inventoryBaseUrl +
    "inventory-product/list-sales-or-purchase-uom-by-base-uom/";
const variantSearchListApi =
    inventoryBaseUrl + "inventory-product/list-variants";
const variantCreatetApi =
    inventoryBaseUrl + "inventory-product/create-variant-new/";
const variantPatchApi = inventoryBaseUrl + "inventory-product/variant-update/";
//variant creation Apisssss>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
const variantCreationListApi = inventoryBaseUrl + "inventory-product/list-item";
const generateQrCodeApi =
    inventoryBaseUrl + "inventory-product/generate-qrcode/";
const variantCreationSearchListApi =
    inventoryBaseUrl + "inventory-product/list-variant-by-inventory-by-item/";
const linkedListDeletionApi =
    inventoryBaseUrl + "inventory-product/update-linkitem/";
const linkedListPatchnApi =
    inventoryBaseUrl + "inventory-product/update-linkitem/";

const variantCreationReadApi =
    inventoryBaseUrl + "inventory-product/read-item-for-variant/";
const variantCreation2ReadApi = inventoryBaseUrl +
    "inventory-product/read-variant-framework-for-variant-creation/";

//channel Allocation
const channelTypeReadApi =
    inventoryBaseUrl + "inventory-product/list-variant-or-group?";
const channelFilterReadApi =
    inventoryBaseUrl + "inventory-stock/filter-in-channel-allocation";
//stock
const stockReadApi = inventoryBaseUrl + "inventory-stock/read-variant/";
const stockTableReadApi =
    stagingUrl + "purchase-order/get-invoice-lines-by-variant";
const stockVerticalReadApi =
    "https://api-rgc-organization.hilalcart.com/channel/list-categories/";
const stockVerticalListReadApi =
    "https://api-rgc-organization.hilalcart.com/channel/list-channels-categories/";
const channelPostApi =
    inventoryBaseUrl + "inventory-stock/product-channel-allocation";
const channelReadApi =
    inventoryBaseUrl + "inventory-stock/list-channel-type-by-variant/";
const channelStockAllocationReadApi =
    inventoryBaseUrl + "inventory-stock/read-channel-type-stock/";
const channelStockAllocationPatchApi =
    inventoryBaseUrl + "inventory-stock/read-channel-type-stock/";
//channel stock
const channelAllocationReadApi =
    inventoryBaseUrl + "inventory-stock/list-channel-by-variant/";
const channelAssignReadApi =
    inventoryBaseUrl + "inventory-stock/read-patch-channel-stock/";
const VariantFrameWorkPost =
    inventoryBaseUrl + "inventory-product/create-newvariantframework";
const VariantFrameWorkPatchApi =
    inventoryBaseUrl + "inventory-product/patch-variantframework/";
const postCombinationFrameworkPostApi =
    inventoryBaseUrl + "inventory-product/create-variant";
//costing
const costingTypePostApi =
    inventoryBaseUrl + "inventory-costing/costing-method-type-create";
const costingCreateApi =
    inventoryBaseUrl + "inventory-costing/costing-method-create";
const listcostingMethodApi =
    inventoryBaseUrl + "inventory-costing/list-costing-method-type";
const listcostingCreationMethodApi =
    inventoryBaseUrl + "inventory-costing/list-costing-method";
const costingTypePatchApi =
    inventoryBaseUrl + "inventory-costing/costing-method-type-update/";
const costingCreateDeleteApi =
    inventoryBaseUrl + "inventory-costing/costing-method-update/";
const pricingGroupListApi =
    inventoryBaseUrl + "inventory-costing/list-pricing-type";
const costingMethodReadApi =
    inventoryBaseUrl + "inventory-costing/read-costing-method/";
const costingTypeMethodReadApi =
    inventoryBaseUrl + "inventory-costing/read-costing-method-type/";
const pricingGroupCreateApi =
    inventoryBaseUrl + "inventory-costing/pricing-type-create";
const pricingGroupDeleteApi =
    inventoryBaseUrl + "inventory-costing/pricing-type-update/";
const pricingDeleteApi =
    inventoryBaseUrl + "inventory-costing/pricing-group-update/";
const pricingGroupReadApi =
    inventoryBaseUrl + "inventory-costing/read-pricing-type/";
const pricinglistReadApi =
    inventoryBaseUrl + "inventory-costing/list-pricing-groups";
const pricingReadApi =
    inventoryBaseUrl + "inventory-costing/read-pricing-groups/";
const pricingPostApi =
    inventoryBaseUrl + "inventory-costing/pricing-group-create";
const readChannelStockTableApi =
    inventoryBaseUrl + "inventory-costing/list-costing-by-channel-stock/";
const creaetCostingApi =
    inventoryBaseUrl + "inventory-costing/create-costing-pricing";
const readCostingApi =
    inventoryBaseUrl + "inventory-costing/read-patch-costing/";
const pgTypeApi = inventoryBaseUrl + "inventory-costing/create-costing-pricing";
const virtualStockTypeApi = inventoryBaseUrl + "inventory-stock/create-stock";
const pricingPgPercentageApi =
    inventoryBaseUrl + "inventory-costing/get-gp-percntage";
const patchCostingApi =
    inventoryBaseUrl + "inventory-costing/read-patch-costing/";
const postFrameWorkApi =
    inventoryBaseUrl + "inventory-product/create-newvariantframework";
const listAttributeTypeApi =
    inventoryBaseUrl + "inventory-product/list-attribute";
const frameworkDeleteApi =
    inventoryBaseUrl + "inventory-product/patch-variantframework/";
const stockPostkDeleteApi = inventoryBaseUrl + "inventory-stock/create-stock";
