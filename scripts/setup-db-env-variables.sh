export NUMBER=01

export AZURE_CACHE_NAME=acme-fitness-cache-asa${NUMBER}
export POSTGRES_SERVER=acme-fitness-db-asa${NUMBER}
export POSTGRES_SERVER_USER=acme             # Postgres server username to be created in next steps
export POSTGRES_SERVER_PASSWORD='super$ecr3t'         # Postgres server password to be created in next steps
export CART_SERVICE_CACHE_CONNECTION="cart_service_cache"
export ORDER_SERVICE_DB="acmefit_order"
export ORDER_SERVICE_DB_CONNECTION="order_service_db"
export CATALOG_SERVICE_DB="acmefit_catalog"
export CATALOG_SERVICE_DB_CONNECTION="catalog_service_db"
