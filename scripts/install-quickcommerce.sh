# Install on Ubuntu
mkdir -p /var/repos
cd /var/repos
git clone https://github.com/firebrandsolutions/quickcommerce-oc.git quickcommerce-api-src
cd quickcommerce-api-repos/docker
# At this point update docker-compose to expose port 80 if prod
docker-compose up --build