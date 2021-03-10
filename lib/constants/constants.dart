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
const API_PATH_SERVICES_TYPES = "/services/groups";
const API_PATH_SERVICES_ALL = "/services/get";
const API_PATH_SERVICES_SEARCH = "/services/search";
const API_PATH_CUSTOMER_SERVICES_ACTION = "/services/customer_service_action";
const API_PATH_CREATE_SERVICES_ORDER = "/services/orders";


// PARTNER Server Endpoints
const API_PATH_PARTNER_INFO = "/accounts/info";
const API_PATH_PARTNER_CREATE_STORE = "/accounts/stores";
const API_PATH_PARTNER_CREATE_SERVICE = "/services";
const API_PATH_PARTNER_UPDATE_SERVICE = "/services";
const API_PATH_PARTNER_SUBSCRIPTION_PLANS = "/accounts/subscription_plans";
const API_PATH_PARTNER_TOKEN = "/accounts/partner_token";
const API_PATH_SERVICE_REQUESTS = "/accounts/get_service_requests";
const API_PATH_STORE_CATEGORIES = "/utils/store_categories";
const API_PATH_GET_CITIES = "/utils/get_cities";
const API_PATH_GET_COUNTRY = "/utils/available_countries";
const API_PATH_GET_SERVICE_LOCATION = "/utils/available_service_locations";
