set -xe
echo "Running..."
nginx -g "daemon off;" & php-fpm
