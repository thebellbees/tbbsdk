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
const API_PATH_SERVICES_TYPES = "/home/categories";
const API_PATH_SERVICES_ALL = "/service/available_service";
const API_PATH_SERVICES_SEARCH = "/service/search";
const API_PATH_SERVICE_ACTION_HIRE = "/service/hire_service";
const API_PATH_SERVICE_ACTION_CALL = "/service/call_service";
const API_PATH_CUSTOMER_CART_ORDERS = "/cart/service_items";
const API_PATH_CUSTOMER_SERVICE_ORDERS_ACCEPT = "/cart/service_items/accept";
const API_PATH_CUSTOMER_SERVICE_ORDERS_CANCEL = "/cart/service_items/cancel";
const API_PATH_CUSTOMER_ORDERS = "/order/items";

// PARTNER Server Endpoints

// Accounts

const API_PATH_PARTNER_GET_STORES = "/accounts/store/items";

// Pages
const API_PATH_PARTNER_SERVICES_OVERVIEW = "/home/overview";
const API_PATH_PARTNER_CREATE_SERVICES_ORDER = "/job/create_order";
const API_PATH_PARTNER_REJECT_SERVICES_ORDER = "/services/orders";
const API_PATH_PARTNER_SERVICE_ORDERS = "/order/items";
const API_PATH_PARTNER_SERVICE_JOBS_REQUESTS = "/job/items";

const API_PATH_PARTNER_INFO = "/accounts/info";
const API_PATH_PARTNER_CREATE_STORE = "/accounts/store/create";
const API_PATH_PARTNER_CREATE_SERVICE = "/accounts/store/create_service";
const API_PATH_PARTNER_UPDATE_SERVICE = "/services";
const API_PATH_PARTNER_SUBSCRIPTION_PLANS = "/store/available_subscriptions";
const API_PATH_PARTNER_TOKEN = "/accounts/partner_token";
const API_PATH_PARTNER_STORE_CATEGORIES = "/utils/store_categories";
const API_PATH_PARTNER_GET_CITIES = "/utils/get_cities";
const API_PATH_PARTNER_GET_COUNTRY = "/utils/available_countries";
const API_PATH_PARTNER_GET_SERVICE_LOCATION =
    "/utils/available_service_locations";
