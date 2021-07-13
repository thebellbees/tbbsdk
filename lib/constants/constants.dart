const DEFAULT_API_PATH = "/v1";

// Authentication Server Endpoints
const API_PATH_REGISTER_WITH_PHONE = "/auth/register";
const API_PATH_LOGIN_WITH_PHONE = "/auth/generate_otp";
const API_PATH_OTP_VERIFY = "/auth/otp_verify";
const API_PATH_REFRESH_TOKEN = "/auth/refresh-token";
const API_PATH_PHONE_UPDATE = "/auth/update_phone";
const API_PATH_INFO_UPDATE = "/users/me";
const API_PATH_CONNECT_WITH_SOCIAL = "/users/social_connect";
const API_PATH_AUTH_WITH_SOCIAL = "/auth/login_with_social";

// App Server Endpoints
const API_PATH_GET_INFO = "/accounts/info";
const API_PATH_TAXONOMY_TYPES = "/system/categories";
const API_PATH_SERVICES_ALL = "/services/service/available_service";
const API_PATH_SERVICES_ADD_TO_FAVOURITE = "/services/favourite/add_to_fav";
const API_PATH_SERVICES_FAVOURITES_ALL = "/services/favourite/items";
const API_PATH_SERVICES_REMOVE_FROM_FAVOURITE =
    "/services/favourite/remove_from_fav";
const API_PATH_SERVICES_SEARCH = "/services/service/search";
const API_PATH_SERVICE_ACTION_HIRE = "/services/service/hire_service";
const API_PATH_SERVICE_ACTION_CALL = "/services/service/call_service";
const API_PATH_CUSTOMER_CART_ORDERS = "/services/cart/items";
const API_PATH_CUSTOMER_SERVICE_ORDERS_ACCEPT = "/services/cart/items/accept";
const API_PATH_CUSTOMER_SERVICE_ORDERS_CANCEL = "/services/cart/items/cancel";
const API_PATH_HYPER_ADD_TO_FAVOURITE = "/hyper/favourite/add_to_fav";
const API_PATH_HYPER_FAVOURITES_ALL = "/hyper/favourite/items";
const API_PATH_HYPER_REMOVE_FROM_FAVOURITE = "/hyper/favourite/remove_from_fav";
const API_PATH_HYPER_GET_QUOTATION = "/hyper/hyper/get_quotation";
const API_PATH_HYPER_ALL = "/hyper/hyper/available_shops";
const API_PATH_HYPER_CART_ORDERS = "/hyper/cart/items";
const API_PATH_CUSTOMER_ORDERS = "/services/order/items";

// PARTNER Server Endpoints

// Accounts

const API_PATH_PARTNER_GET_STORES = "/accounts/stores";
const API_PATH_ADDRESS_ALL = "/accounts/address/list";
const API_PATH_ADDRESS_ADD = "/accounts/address";
const API_PATH_ADDRESS_UPDATE = "/accounts/address";
const API_PATH_ADDRESS_REMOVE = "/accounts/address";

// Service
const API_PATH_PARTNER_SERVICES_OVERVIEW = "/services/home/overview";
const API_PATH_PARTNER_SERVICE_ORDERS = "/services/order/items";
const API_PATH_PARTNER_SERVICE_JOBS_REQUESTS = "/services/job/items";
const API_PATH_PARTNER_SERVICE_JOB_CANCEL = "/services/job";
const API_PATH_PARTNER_SERVICE_JOB_CREATE_ORDER = "/services/job";
const API_PATH_PARTNER_CREATE_SERVICE = "/accounts/create_service";
const API_PATH_PARTNER_UPDATE_SERVICE = "/services";
const API_PATH_PARTNER_SERVICE_ORDER_COMPLETE = "/services/order/complete";

//Hyper
const API_PATH_PARTNER_CREATE_HYPER = "/accounts/create_hyper_shop";
const API_PATH_PARTNER_HYPER_OVERVIEW = "/hyper/home/overview";
const API_PATH_PARTNER_HYPER_QUOTATION_REQUESTS = "/hyper/quotation/items";
const API_PATH_PARTNER_HYPER_SEND_QUOTATION = "/hyper/quotation/send_quotation";
const API_PATH_PARTNER_INFO = "/accounts/info";
const API_PATH_PARTNER_CREATE_STORE = "/accounts/create_store";
const API_PATH_PARTNER_SUBSCRIPTION_PLANS =
    "/accounts/store/available_subscriptions";
const API_PATH_PARTNER_TOKEN = "/accounts/partner_token";
const API_PATH_PARTNER_STORE_CATEGORIES = "/store_categories";
const API_PATH_PARTNER_GET_CITIES = "/utils/get_cities";
const API_PATH_PARTNER_GET_COUNTRY = "/utils/available_countries";
const API_PATH_PARTNER_GET_SERVICE_LOCATION =
    "/utils/available_service_locations";
