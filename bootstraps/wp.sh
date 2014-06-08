# install wordpress core
wp core download

# create config file; enable WP_DEBUG and WP_DEBUG_LOG
read -p "Enter a name for the msql db: " dbname
read -p "Your mysql user name " dbuser
read -p "Your mysql password " dbpass
wp core config --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass --extra-php <<PHP
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
PHP
echo "Database info:
db name=$dbname
db username=$bduser
db password=$dbpass" > ~/Desktop/wp.txt

# create the db based on wp-config.php
echo "Creating the database…"
wp db create

# install wp
echo "Set up database tables:"
read -p "Site url? " url
read -p "Site title? (no spaces please) " title
read -p "Admin user name? " adminname
read -p "Admin email address? " adminemail
adminpass=`openssl rand -base64 16`
wp core install --url=$url --title=$title --admin_user=$adminname --admin_password=$adminpass --admin_email=$adminemail
echo "WordPress install:
Site url=$url
Admin user name=$adminname
Admin email=$adminemail
Site password=$adminpass" >> ~/Desktop/wp.txt
echo "Your setup info info has been saved to ~/Desktop/wp.txt"

# install plugins
echo "Installing plugins…"
wp plugin install contact-form-7
wp plugin install advanced-custom-fields
wp plugin install contact-form-7-to-database-extension/
wp plugin install relative-url
wp plugin install wordpress-seo
wp plugin install google-sitemap-generator
wp plugin install google-analytics-dashboard-for-wp
wp plugin install regenerate-thumbnails
echo "Plugins installed!"

# scaffold
echo "Creating starter theme, based on _s by Automattic"
read -p "Theme slug? " slug	
read -p "Theme name? (no spaces please) " theme_name
read -p "Theme author? (no spaces please) " theme_author
read -p "Theme author's URL? " theme_author_uri
wp scaffold _s $slug --activate --theme_name=$theme_name --author=$theme_author --author_uri=$theme_author_uri
# cd wp-content/themes/$slug