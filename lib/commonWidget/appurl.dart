const baseUrl = "https://api-purchase-order-staging.rgcdynamics.org/";
const stagingUrl = "https://api-purchase-order-staging.rgcdynamics.org/";
const purchaseOrderLiveBaseUrl = "https://api-uat-inv-purchase-order.sidrabusiness.com/";



const hilalBaseUrl = "https://api-rgc-user.hilalcart.com/";
// const stagingUrl= "http://65.1.61.201:8111/";
// const inventoryLiveBaseUrl = "http://65.1.61.201:8112/";

const inventoryBaseUrl = "https://api-inventory-software-staging.rgcdynamics.org/";
const inventoryLiveBaseUrl = "https://api-uat-inv-inventory.sidrabusiness.com/";

const userBaseUrl = "https://api-rgc-user.hilalcart.com/";
const userLiveBaseUrl = "https://api-uat-user.sidrabazar.com/";


const promotionBaseUrl="https://invtry-promotion.rgcdynamics.org/";
const promotionLiveBaseUrl="https://api-uat-inv-promotion.sidrabusiness.com/";

const organizationStagingApiApi = "https://api-rgc-organization.hilalcart.com/legalunit/business-unit-list?legal_unit=";
const organizationStagingBaseApi = "https://api-rgc-organization.hilalcart.com/";
const organizationLiveApiApi = "https://api-uat-organization.sidrabusiness.com/legalunit/business-unit-list?legal_unit=";
const organizationLiveBaseApi = "https://api-uat-organization.sidrabusiness.com/";

const purchasereturnBaseUrl = "https://invtry-purchase-return.rgcdynamics.org/";
const purchasereturnLiveBaseUrl =  "https://api-uat-inv-purchase-return.sidrabusiness.com/";

const salesOrderBaseUrl = "https://invtry-sales-order-staging.rgcdynamics.org/";
const salesOrderLiveBaseUrl = "https://api-uat-inv-sales-order.sidrabusiness.com/";

const salesReturnBaseUrl = "https://api-invtry-sales-return.hilalcart.com/";
const salesReturnLiveBaseUrl = "https://api-uat-inv-sales-return.sidrabusiness.com/";


const payMentBaseUrl = "https://api-uat-payments.sidrabazar.com/";



//*********************** Base Url s*******************************++++++++++++++++++++++++++++++++++++++++++++++

const postPurchaseurl = purchaseOrderLiveBaseUrl + "purchase-order/create-purchase-order";
const loginApi = userLiveBaseUrl + "user-employee_employeeuserlogin/inventory";
const getChannelListApi = organizationLiveBaseApi + "channel/list-channels-with-types/";
const generalVerticalList =
    purchaseOrderLiveBaseUrl + "purchase-order/list-purchase-order/";
const purchaseOrderType = purchaseOrderLiveBaseUrl + "purchase-order/create-purchase-order";

const purchaseOrdertype = purchaseOrderLiveBaseUrl + "purchase-order/create-purchase-order";
const purchaseCurrentStockqty =
    purchaseOrderLiveBaseUrl + "inventory-stock/get-stock-quantity-by-variant/testing002/aa";
const generalPurchaseRead = purchaseOrderLiveBaseUrl + "purchase-order/read-purchase-order/";
const generalPurchasePatch = purchaseOrderLiveBaseUrl + "purchase-order/read-purchase-order/";
const vendorCodeUrl =
    "https://api-newpartner-uat.ahlancart.com/new_partner/vendor-partner/list";
//*************purchaseRecievingTAb screen
const purchaseRecievingRead =
    purchaseOrderLiveBaseUrl + "purchase-order/read-receiving-by-purchase-order/";
const purchaseRecievingPatch = purchaseOrderLiveBaseUrl + "purchase-order/patch-receiving/";
const generatedPo =
    purchaseOrderLiveBaseUrl + "purchase-order/create-missing-system-generated-lpo";
const additionalGeneratedPo =
    purchaseOrderLiveBaseUrl + "purchase-order/create-additional-system-generated-lpo";

//***********request form tab****************
const requestFormRead = purchaseOrderLiveBaseUrl + "purchase-order/patch-request-form/";
const requestFormCreate = purchaseOrderLiveBaseUrl + "purchase-order/create-request-form";
const requestFormOrderType = purchaseOrderLiveBaseUrl + "purchase-order/create-request-form";
const requestFormPatch = purchaseOrderLiveBaseUrl + "purchase-order/patch-request-form/";
const requestVerticalList = purchaseOrderLiveBaseUrl + "purchase-order/list-request-form/";
const requestFormOderPerson = userLiveBaseUrl + "user-employee_employeeuser";
//*********************request receiving form*******************
const rqstReceivingRead =
    purchaseOrderLiveBaseUrl + "purchase-order/read-receiving-by-request-form/";
const rqstReceivingPatch =
    purchaseOrderLiveBaseUrl + "purchase-order/patch-request-form-receiving/";
const purchaseRecievingReceivingPatch =
    purchaseOrderLiveBaseUrl + "purchase-order/patch-receiving/";
const additionalGeneratedRequest = purchaseOrderLiveBaseUrl +
    "purchase-order/create-additional-system-generated-request-form";
//inventory invoice**************************//****************
const invoiceRead =
    purchaseOrderLiveBaseUrl + "purchase-order/read-purchase-order-for-invoice-posting/";
const invoicePost = purchaseOrderLiveBaseUrl + "purchase-order/create-purchase-invoice";
const invoiceVerticalList =
    purchaseOrderLiveBaseUrl + "purchase-order/list-purchase-order-for-invoice-posting/";

//purchase return+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
const purchaseReturnGeneralPost = purchasereturnLiveBaseUrl + "purchase-return/create-purchase-return";
const payMentListApi = payMentBaseUrl + "payment-general/payment-methods";
const payMentPostApi = payMentBaseUrl + "payment-general/payment-transaction";
const payMentPatchApi = payMentBaseUrl + "payment-general/payment-transaction";
const purchaseReturnPurchaseInvoiceidReadApi = purchaseOrderLiveBaseUrl + "purchase-order/list-purchase-invoice-for-purchase-return/";
const purchaseReturnInvoiceRead = purchasereturnLiveBaseUrl + "purchase-return-invoice/read-purchase-return-order-for-invoice/";
const purchaseReturnInvoicelPost = purchasereturnLiveBaseUrl + "purchase-return-invoice/create-purchase-return-invoice";
const purchaseReturnInvoiceIdRead = purchaseOrderLiveBaseUrl + "purchase-order/read-purchase-invoice-for-purchase-return/";

const purchaseReturnGeneralreadApi = purchasereturnLiveBaseUrl + "purchase-return/read-purchase-return/";
const purchaseReturnGeneralPatchApi = purchasereturnLiveBaseUrl + "purchase-return/read-purchase-return/";
const listpurchaseReturnGeneralApi = purchasereturnLiveBaseUrl + "purchase-return/list-purchase-return-order/";

const purchaseReturnGeneralVerticalListApi =
    purchasereturnLiveBaseUrl + "purchase-return/list-purchase-return-order/";

//sales general..........................................
const salesOederGeneralPost = salesOrderLiveBaseUrl + "sales-order/create-sales-order";
const listsalesOederGeneral = salesOrderLiveBaseUrl + "sales-order/list-sales-order/";
const salesGeneralOrderType = salesOrderLiveBaseUrl + "sales-order/create-sales-order";
const salesGeneralVerticalList = salesOrderLiveBaseUrl + "sales-order/list-sales-order/";
const salesGeneralPost = salesOrderLiveBaseUrl + "sales-order/create-sales-order";
const salesGeneralRead = salesOrderLiveBaseUrl + "sales-order/read-sales-order/";
const salesGeneralDeleateApi = salesOrderLiveBaseUrl + "sales-order/read-sales-order/";
const salesGeneralPatchApi = salesOrderLiveBaseUrl + "sales-order/read-sales-order/";
const paymetPatchListApi = payMentBaseUrl + "payment-general/payment-transaction-list";




//sales invoice tab*************************************
const salesInvoiceReadApi = salesOrderLiveBaseUrl + "sales-invoice/read-sales-order-for-invoice/";
const salesInvoicePostApi = salesOrderLiveBaseUrl + "sales-invoice/create-sales-invoice";
//sales return tab
const salesReurnVertcalListApi = salesReturnLiveBaseUrl + "sales-return/list-sales-return-by-inventory/";
const shippingAddressCreationApi = userLiveBaseUrl + "user-general_admin_address/create";
const salesReurnPostApi = salesReturnLiveBaseUrl + "sales-return/create-sales-return";
const listsalesReurnApi = salesReturnLiveBaseUrl + "sales-return/list-sales-return-by-inventory/";
const salesInvoiceCodeApi = salesOrderLiveBaseUrl + "sales-invoice/list-sales-invoice/";
const purchaseOrderPaymentPostSuccessApi = purchaseOrderLiveBaseUrl + "purchase-order/order-edit-after-payment";
const salePaymentPostSuccessApi = salesOrderLiveBaseUrl + "sales-invoice/order-edit-after-payment";

const salesInvoiceRradApi =
    salesOrderLiveBaseUrl + "sales-invoice/read-sales-invoice-for-sales-return/";
const salesReturnInvoiceRradApi =
    salesReturnLiveBaseUrl + "sales-return/read-sales-return/";
const salesReturnInvoiceDeletedApi =
    salesReturnLiveBaseUrl + "sales-return/read-sales-return/";
const salesReturnOrderMode = salesReturnLiveBaseUrl + "sales-return/create-sales-return";
const salesReturngeneralPAtchApi =
    salesReturnLiveBaseUrl + "sales-return/read-sales-return/";
//Sales return invoice read
const salesReturnInvoiceReadApi =
    salesReturnLiveBaseUrl + "sales-return-invoice/read-sales-return-for-invoice/";
const salesReturnInvoicePostApi =
    salesReturnLiveBaseUrl + "sales-return-invoice/create-sales-return-invoice";

//product module******************************************
const brandListApi = inventoryLiveBaseUrl + "inventory-product/list-brand";
const brandCreateApi = inventoryLiveBaseUrl + "inventory-product/create-brand";
const imagePostApi = inventoryLiveBaseUrl + "inventory-product/upload-image";
const brandReadApi = inventoryLiveBaseUrl + "inventory-product/patch-brand/";
const brandDeleteApi = inventoryLiveBaseUrl + "inventory-product/patch-brand/";
const brandPatchApi = inventoryLiveBaseUrl + "inventory-product/patch-brand/";
const createMaterialApi = inventoryLiveBaseUrl + "inventory-product/create-material";
const readMaterialApi = inventoryLiveBaseUrl + "inventory-product/patch-material/";
const patchMaterialApi = inventoryLiveBaseUrl + "inventory-product/patch-material/";
const deleteMaterialApi = inventoryLiveBaseUrl + "inventory-product/patch-material/";
const attributePatchListApi = inventoryLiveBaseUrl + "inventory-product/list-attribute";
const createDivisionApi = inventoryLiveBaseUrl + "inventory-product/create-division";
const readDivisionApi = inventoryLiveBaseUrl + "inventory-product/patch-division/";
const patchDivisionApi = inventoryLiveBaseUrl + "inventory-product/patch-division/";
const deleteDivisionApi = inventoryLiveBaseUrl + "inventory-product/patch-division/";
const createStaticApi = inventoryLiveBaseUrl + "inventory-product/create-static-group";
const listStaticApi = inventoryLiveBaseUrl + "inventory-product/list-static-group";
const readStaticApi = inventoryLiveBaseUrl + "inventory-product/patch-static-group/";
const deleteStaticApi = inventoryLiveBaseUrl + "inventory-product/patch-static-group/";
const patchStaticApi = inventoryLiveBaseUrl + "inventory-product/patch-static-group/";
const uomGroupCreateApi = inventoryLiveBaseUrl + "inventory-product/create-uom-group";
const listUomGroupApi = inventoryLiveBaseUrl + "inventory-product/list-uom-group";
const readUomGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-uom-group/";
const deleteUomGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-uom-group/";
const patchUomGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-uom-group/";
const listCategoryGroupApi =
    inventoryLiveBaseUrl + "inventory-product/list-category-by-division/";
const listMaterialGroupApi =
    inventoryLiveBaseUrl + "inventory-product/list-material";
const listDevisionApi = inventoryLiveBaseUrl + "inventory-product/list-division";
const listBrandApi = inventoryLiveBaseUrl + "inventory-product/list-brand";
const listCategoryAllGroupApi =
    inventoryLiveBaseUrl + "inventory-product/list-category";
const createCategoryGroupApi =
    inventoryLiveBaseUrl + "inventory-product/create-category";
const readCategoryGroupApi =
    inventoryLiveBaseUrl + "inventory-product/patch-category/";
const deleteCategoryGroupApi =
    inventoryLiveBaseUrl + "inventory-product/patch-category/";
const listSubCategoryGroupApi =
    inventoryLiveBaseUrl + "inventory-product/list-sub-category-by-parent/";
const createGroupApi = inventoryLiveBaseUrl + "inventory-product/create-group";
const listGroupApi =
    inventoryLiveBaseUrl + "inventory-product/list-group-by-category/";
const listAllGroupApi = inventoryLiveBaseUrl + "inventory-product/list-group";

const readGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-group/";
const deleteGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-group/";
const patchGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-group/";
const createBaseUomGroupApi = inventoryLiveBaseUrl + "inventory-product/create-uom";
const listBaseUomGroupApi =
    inventoryLiveBaseUrl + "inventory-product/list-uom-by-uom-grp/";
const listBaseAllUomGroupApi = inventoryLiveBaseUrl + "inventory-product/list-uom";
const readBaseUomGroupApi = inventoryLiveBaseUrl + "inventory-product/patch-uom/";
const frameWorkListApi =
    inventoryLiveBaseUrl + "inventory-product/list-newvariantframework";
const frameWorkReadApi =
    inventoryLiveBaseUrl + "inventory-product/read-all-data-variant-framework/";
//item creation
const listItemVerticalListApi = inventoryLiveBaseUrl + "inventory-product/list-item";
const attributePostApi = inventoryLiveBaseUrl + "inventory-product/create-attribute";
const attributePatchApi = inventoryLiveBaseUrl + "inventory-product/read-patch-attribute/";
const createItemApi = inventoryLiveBaseUrl + "inventory-product/create-item";
const readItemApi = inventoryLiveBaseUrl + "inventory-product/read-item/";
const readAttributeCreationApi = inventoryLiveBaseUrl + "inventory-product/read-patch-attribute/";
//variant detail page
const createLinkedItemtApi =
    inventoryLiveBaseUrl + "inventory-product/create-linkitem";
const readLinkedItemtApi = inventoryLiveBaseUrl + "inventory-product/read-linkitem/";
const readStockPartitionApi = inventoryLiveBaseUrl + "inventory-product/patch-partition-stock-group/";
const readLinkedItemVerticalApi = inventoryLiveBaseUrl + "inventory-product/list-variant-under-variants";
const deleteVariantApi = inventoryLiveBaseUrl + "inventory-product/variant-update/";
const listVariantApi = inventoryLiveBaseUrl + "inventory-product/list-variant-by-inventory/";
const listStockPartitionApi = inventoryLiveBaseUrl + "inventory-product/list-partition-stock-groups";
const listLinkedItemApi =
    inventoryLiveBaseUrl + "inventory-product/list-item-linkeditem/";
const readVariantApi = inventoryLiveBaseUrl + "inventory-product/read-variant/";
const salesListApi = inventoryLiveBaseUrl +
    "inventory-product/list-sales-or-purchase-uom-by-base-uom/";
const variantSearchListApi =
    inventoryLiveBaseUrl + "inventory-product/list-variants";
const variantCreatetApi = inventoryLiveBaseUrl + "inventory-product/create-variant-new/";
const stockPartition = inventoryLiveBaseUrl + "inventory-product/create-partition-stock-group";

const variantPatchApi = inventoryLiveBaseUrl + "inventory-product/variant-update/";
//variant creation Apisssss>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
const variantCreationListApi = inventoryLiveBaseUrl + "inventory-product/list-item";
const generateQrCodeApi = inventoryLiveBaseUrl + "inventory-product/generate-qrcode/";
const variantCreationSearchListApi =
    inventoryLiveBaseUrl + "inventory-product/list-variant-by-inventory-by-item/";
const linkedListDeletionApi =
    inventoryLiveBaseUrl + "inventory-product/update-linkitem/";
const linkedListPatchnApi =
    inventoryLiveBaseUrl + "inventory-product/update-linkitem/";

const variantCreationReadApi =
    inventoryLiveBaseUrl + "inventory-product/read-item-for-variant/";
const variantCreation2ReadApi = inventoryLiveBaseUrl +
    "inventory-product/read-variant-framework-for-variant-creation/";

//channel Allocation
const channelTypeReadApi =
    inventoryLiveBaseUrl + "inventory-product/list-variant-or-group?";
const channelFilterReadApi =
    inventoryLiveBaseUrl + "inventory-stock/filter-in-channel-allocation";
//stock
const stockReadApi = inventoryLiveBaseUrl + "inventory-stock/read-variant/";
const stockTableReadApi =
    stagingUrl + "purchase-order/get-invoice-lines-by-variant";
const stockVerticalReadApi = organizationLiveBaseApi+"channel/list-categories/";
const stockVerticalListReadApi =
    organizationLiveBaseApi+"channel/list-channels-categories/";
const channelPostApi =
    inventoryLiveBaseUrl + "inventory-stock/product-channel-allocation";
const channelReadApi =
    inventoryLiveBaseUrl + "inventory-stock/list-channel-type-by-variant/";
const channelStockAllocationReadApi =
    inventoryLiveBaseUrl + "inventory-stock/read-channel-type-stock/";
const channelStockAllocationPatchApi =
    inventoryLiveBaseUrl + "inventory-stock/read-channel-type-stock/";
//channel stock
const channelAllocationReadApi =
    inventoryLiveBaseUrl + "inventory-stock/list-channel-by-variant/";
const channelAssignReadApi =
    inventoryLiveBaseUrl + "inventory-stock/read-patch-channel-stock/";
const VariantFrameWorkPost =
    inventoryLiveBaseUrl + "inventory-product/create-newvariantframework";
const VariantFrameWorkPatchApi =
    inventoryLiveBaseUrl + "inventory-product/patch-variantframework/";
const postCombinationFrameworkPostApi =
    inventoryLiveBaseUrl + "inventory-product/create-variant";
//costing
const costingTypePostApi = inventoryLiveBaseUrl + "inventory-costing/costing-method-type-create";
const unicostGetApi = inventoryLiveBaseUrl + "inventory-costing/create-costing-pricing?variant=";
const costingCreateApi =
    inventoryLiveBaseUrl + "inventory-costing/costing-method-create";
const listcostingMethodApi =
    inventoryLiveBaseUrl + "inventory-costing/list-costing-method-type";
const listcostingCreationMethodApi =
    inventoryLiveBaseUrl + "inventory-costing/list-costing-method";
const costingTypePatchApi =
    inventoryLiveBaseUrl + "inventory-costing/costing-method-type-update/";
const costingCreateDeleteApi =
    inventoryLiveBaseUrl + "inventory-costing/costing-method-update/";
const pricingGroupListApi =
    inventoryLiveBaseUrl + "inventory-costing/list-pricing-type";
const costingMethodReadApi =
    inventoryLiveBaseUrl + "inventory-costing/read-costing-method/";
const costingTypeMethodReadApi =
    inventoryLiveBaseUrl + "inventory-costing/read-costing-method-type/";
const pricingGroupCreateApi =
    inventoryLiveBaseUrl + "inventory-costing/pricing-type-create";
const pricingGroupDeleteApi =
    inventoryLiveBaseUrl + "inventory-costing/pricing-type-update/";
const pricingDeleteApi =
    inventoryLiveBaseUrl + "inventory-costing/pricing-group-update/";
const pricingGroupReadApi =
    inventoryLiveBaseUrl + "inventory-costing/read-pricing-type/";
const pricinglistReadApi =
    inventoryLiveBaseUrl + "inventory-costing/list-pricing-groups";
const pricingReadApi =
    inventoryLiveBaseUrl + "inventory-costing/read-pricing-groups/";
const pricingPostApi =
    inventoryLiveBaseUrl + "inventory-costing/pricing-group-create";
const readChannelStockTableApi =
    inventoryLiveBaseUrl + "inventory-costing/list-costing-by-channel-stock/";
const creaetCostingApi =
    inventoryLiveBaseUrl + "inventory-costing/create-costing-pricing";
const readCostingApi =
    inventoryLiveBaseUrl + "inventory-costing/read-patch-costing/";
const pgTypeApi = inventoryLiveBaseUrl + "inventory-costing/create-costing-pricing";
const virtualStockTypeApi = inventoryLiveBaseUrl + "inventory-stock/create-stock";
const pricingPgPercentageApi =
    inventoryLiveBaseUrl + "inventory-costing/get-gp-percntage";
const patchCostingApi =
    inventoryLiveBaseUrl + "inventory-costing/read-patch-costing/";
const postFrameWorkApi =
    inventoryLiveBaseUrl + "inventory-product/create-newvariantframework";
const listAttributeTypeApi =
    inventoryLiveBaseUrl + "inventory-product/list-attribute";
const frameworkDeleteApi = inventoryLiveBaseUrl + "inventory-product/patch-variantframework/";
const stockPostkDeleteApi = inventoryLiveBaseUrl + "inventory-stock/create-stock";
const vendorDetailsApi = userLiveBaseUrl + "user-manufacturer_manufactureruserlist";
//custom api+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
const createCustomApi = inventoryLiveBaseUrl + "inventory-product/create-group-custom-data";
const listCustomApi = inventoryLiveBaseUrl + "inventory-product/list-group-custom-data";
const readCustomApi = inventoryLiveBaseUrl + "inventory-product/update-group-custom-data/";
const patchCustomApi = inventoryLiveBaseUrl + "inventory-product/update-group-custom-data/";
//+++++++++Division Config
const createDivisionConfig = inventoryLiveBaseUrl + "inventory-product/create-division-configuration";
const listDivisionConfig = inventoryLiveBaseUrl + "inventory-product/list-division-configuration";
const readDivisionConfig = inventoryLiveBaseUrl + "inventory-product/patch-division-configuration/";
const listUomDivisionConfig = inventoryLiveBaseUrl + "inventory-product/list-uom-for-division-configuration";
const listGroupConfig = inventoryLiveBaseUrl + "inventory-product/list-group-for-division-configuration";
const listCategoryDivisionConfig = inventoryLiveBaseUrl + "inventory-product/list-category-for-division-configuration";


//user urlsss+++++++++++++++++++++++++++
const shippingListUrl = userLiveBaseUrl + "user-general_admin_address";
const shippingCreationUrl = userLiveBaseUrl + "user-general_admin_address/create";
const customIdListUrl = userLiveBaseUrl + "user-customer_list-customer";
const customerCreationApi = userLiveBaseUrl + "user-customer_create-customer/inventory";

//Promotion tab
//sale**********
const listOfferGroupUrl = promotionLiveBaseUrl + "discount/list-offer-period";
const createOfferPeriod = promotionLiveBaseUrl + "discount/create-offer-period";
const readOfferPeriod = promotionLiveBaseUrl + "discount/read-patch-delete-offer-period/";
const readOfferGroupApi = promotionLiveBaseUrl + "discount/read-patch-delete-offer-group/";
const readPatchPromotionSaleApi = promotionLiveBaseUrl + "sale/read-patch-sale/";
const listOfferGroupList = promotionLiveBaseUrl + "discount/list-offer-group-for-discount/";
const offerAppliedTotypeApi = promotionLiveBaseUrl + "discount/create-offer-group";
const listSaleVerticalListApi = promotionLiveBaseUrl + "sale/list-sale-by-inventory/";
const createPromotionSaleApi = promotionLiveBaseUrl + "sale/create-sale";
const ListSegmentApi = "http://api-uat-inventory.sidrabazar.com/" + "inventory-product/list-segments";
const ListApplyingNameApi = "inventoryLiveBaseUrl" + "inventory-product/list-promotion-applying-on";
const PromotionImagePostApi = promotionLiveBaseUrl + "discount/upload-image";
const promotionVariantDeactivateByTypeApi = promotionLiveBaseUrl + "buy-more/deactivate-previous-offer-by-type";
const promotionVariantDeactivateByVariantApi = promotionLiveBaseUrl + "buy-more/show-variants-to-deactivate";
const deactivateOfferByVariantPostApi = promotionLiveBaseUrl + "buy-more/deactivate-previous-offer-by-variant";

//Discount ************************************
const listDiscountVerticalListApi = promotionLiveBaseUrl +"discount/list-discount/";
const listDiscountVariantByGroupCodeApi = promotionLiveBaseUrl +"discount/list-products-by-group-code/";
const readPatchPromotionDiscountApi = promotionLiveBaseUrl + "discount/read-patch-delete-discount/";
const deletePromotionDiscountApi = promotionLiveBaseUrl + "discount/create-discount";


//buyMore******************
const createPromotionBuyMore = promotionLiveBaseUrl +"buy-more/create-buy-more";
const listBuyMoreVerticalListApi = promotionLiveBaseUrl +"buy-more/list-buy-more-by-inventory/";
const readBuyMoreApi = promotionLiveBaseUrl +"buy-more/read-buy-more/";


//Bogo******************
const patchotionBogoApi = promotionLiveBaseUrl +"bogo/read-patch-bogo/";
const verticalListBogoApi = promotionLiveBaseUrl +"bogo/list-bogo-by-inventory/";




