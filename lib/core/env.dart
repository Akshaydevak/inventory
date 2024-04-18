enum EnviornMent{dev,production}

abstract class AppEnviornment{
  static late String purchaseOrderLiveBaseUrl;
  static late String hilalBaseUrl;
  static late String inventoryLiveBaseUrl;
  static late String userLiveBaseUrl;
  static late String promotionLiveBaseUrl;
  static late String organizationLiveApiApi;
  static late String salesReturnLiveBaseUrl;
  static late String salesOrderLiveBaseUrl;
  static late String purchasereturnLiveBaseUrl;
  static late String organizationLiveBaseApi;
  static late String payMentBaseUrl;
  static late EnviornMent _enviornment;
  static EnviornMent get enviornment=> _enviornment;
  static setUpEnv(EnviornMent env){
    _enviornment=env;
    switch (env){
      case EnviornMent.dev:
        {
          purchaseOrderLiveBaseUrl="https://st-inv-purchase-order.hilalcart.com/";
          inventoryLiveBaseUrl="https://st-inv-inventory.hilalcart.com/";
          userLiveBaseUrl="https://api-rgc-user.hilalcart.com/";
          hilalBaseUrl="https://api-rgc-user.hilalcart.com/";
          promotionLiveBaseUrl="https://st-inv-promotion.hilalcart.com/";
          organizationLiveApiApi="https://api-rgc-organization.hilalcart.com/legalunit/business-unit-list/org?legal_unit=";
          organizationLiveBaseApi="https://api-rgc-organization.hilalcart.com/";
          purchasereturnLiveBaseUrl="https://st-inv-purchase-return.hilalcart.com/";
          salesOrderLiveBaseUrl="https://st-inv-sales-order.hilalcart.com/";
          salesReturnLiveBaseUrl="https://st-inv-sales-return.hilalcart.com/";
          payMentBaseUrl="https://api-rgc-payments.hilalcart.com/";

          break;
        }
        case EnviornMent.production:
        {
          purchaseOrderLiveBaseUrl="https://api-uat-inv-purchase-order.sidrabusiness.com/";
          inventoryLiveBaseUrl="https://api-uat-inv-inventory.sidrabusiness.com/";
          userLiveBaseUrl="https://api-uat-user.sidrabazar.com/";
          hilalBaseUrl="https://api-rgc-user.hilalcart.com/";
          promotionLiveBaseUrl="https://api-uat-inv-promotion.sidrabusiness.com/";
          organizationLiveApiApi="https://api-uat-organization.sidrabusiness.com/legalunit/business-unit-list/org?legal_unit=";
          organizationLiveBaseApi="https://api-uat-organization.sidrabusiness.com/";
          purchasereturnLiveBaseUrl="https://api-uat-inv-purchase-return.sidrabusiness.com/";
          salesOrderLiveBaseUrl="https://api-uat-inv-sales-order.sidrabusiness.com/";
          salesReturnLiveBaseUrl="https://api-uat-inv-sales-return.sidrabusiness.com/";
          payMentBaseUrl="https://api-uat-payments.sidrabazar.com/";

          break;
        }
    }
  }
}