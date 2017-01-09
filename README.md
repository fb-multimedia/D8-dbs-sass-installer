# Drupal 8 bootstrap sass subtheme creation shell script

Since version 8.x-3.0-rc2 (august 2016), the Drupal Bootstrap theme includes a Sass starterkit.
This shell script installs and rename folders and edit files to create your subtheme based on the sass starterkit.

## Requirements
You need a Drupal 8 website with drupal bootstrap theme (8.x-3.0-rc2) installed on a linux server. This server must be able to use ruby-compass and drush commands. It needs read/write permissions on the D8 directory.

## Installation
Download and place the script <b>install-bootstrap-sass.sh</b> at the root of the drupal folder installation, at same level as the /web folder.
Start the shell command prompt at this place and start the script with :
<pre>$ ./install-bootstrap-sass.sh</pre>

<b>During the process it'll ask you</b>
<pre>Enter the new Drupal Bootstrap(sass) subtheme name to create:</pre>
Enter your theme name and confirm with enter


<pre>The following extensions will be enabled: yourthemename
Do you really want to continue? (y/n):</pre>
type 'y' and confirm with enter

<pre>Do you want to update default key in system.theme config? (y/n):</pre>
type 'y' to make your theme as default and confirm with enter

At the end of the process you should read 
<pre>Cache rebuild complete.  [ok]</pre>

Then you should find your theme by default in drupal.

## Details
For details see the post (in french)
http://www.fb-multimedia.fr/blog/cr%C3%A9er-theme-bootstrap-3sass-drupal-8

## Tests
It is a development tool script and it have been tested on an ubuntu linux VM (Drupal VM).
Use at your one risk, it comes with no warranty.

## Contributors
Fred Boulanger
https://github.com/fb-multimedia
www.fb-multimedia.fr


##About the autor
Fred Boulanger is web developer since 2001 and specialized in drupal theming since 2011.
