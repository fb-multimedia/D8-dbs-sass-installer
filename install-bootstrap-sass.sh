echo "Enter the new Drupal Bootstrap(sass) subtheme name to create:"
read dwheel
#Create the subtheme directory
cd web
cp -r themes/contrib/bootstrap/starterkits/sass themes/$dwheel

#Rename the files
mv themes/$dwheel/config/install/THEMENAME.settings.yml themes/$dwheel/config/install/$dwheel.settings.yml
mv themes/$dwheel/config/schema/THEMENAME.schema.yml themes/$dwheel/config/schema/$dwheel.schema.yml
mv themes/$dwheel/THEMENAME.libraries.yml themes/$dwheel/$dwheel.libraries.yml
mv themes/$dwheel/THEMENAME.theme themes/$dwheel/$dwheel.theme
mv themes/$dwheel/THEMENAME.starterkit.yml themes/$dwheel/$dwheel.info.yml

#Editing the file content with search/replace for THEMENAME and THEMETITLE
sed -i "s/THEMENAME/$dwheel/g" themes/$dwheel/config/schema/$dwheel.schema.yml
sed -i "s/THEMETITLE/$dwheel/g" themes/$dwheel/config/schema/$dwheel.schema.yml
sed -i "s/THEMENAME/$dwheel/g" themes/$dwheel/$dwheel.info.yml
sed -i "s/THEMETITLE/$dwheel/g" themes/$dwheel/$dwheel.info.yml

#Install the [Bootstrap Framework Source Files] 
wget -P themes/$dwheel https://github.com/twbs/bootstrap-sass/archive/master.zip
unzip themes/$dwheel/master.zip -d themes/$dwheel/
mv themes/$dwheel/bootstrap-sass-master themes/$dwheel/bootstrap
rm themes/$dwheel/master.zip

#Edit the libraries.yml
sed -i "s/css\//stylesheets\//g" themes/$dwheel/$dwheel.libraries.yml

#compil with compass to create stylesheets/style.css file
cd themes/$dwheel
compass compile

#enable as default theme
cd ..
drush en $dwheel
drush config-set system.theme default $dwheel
drush cache-rebuild
