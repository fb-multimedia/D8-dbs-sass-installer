# Drupal 8 bootstrap sass subtheme creation shell script

Since version 8.x-3.0-rc2 (august 2016), the Drupal Bootstrap theme includes a Sass starterkit.
This shell script install and rename folders and edit files to create your subtheme based on this sass starterkit.

## Requirements
You need a Drupal 8 website with drupal bootstrap theme (8.x-3.0-rc2) installed on a linux server. This server must be able to use ruby-compass and drush commands. It needs read/write permissions on the D8 directory.

## Installation
Download and place the script <b>install-bootstrap-sass.sh</b> at the root of the themes folder of your drupal installation.
Start the shell command prompt at this place and start the script with :
<pre>$ ./install-bootstrap-sass.sh</pre>

<b>During the process it will ask you</b>
<pre>Enter the new Drupal Bootstrap(sass) subtheme name to create:</pre>
Enter your theme's name and confirm with enter

<pre>The following extensions will be enabled: yourthemename
Do you really want to continue? (y/n):</pre>
type 'y' and confirm with enter

<pre>Do you want to update default key in system.theme config? (y/n):</pre>
type 'y' to make your theme as default and confirm with enter

At the end of the process you should read
<pre>Cache rebuild complete.  [ok]</pre>

Then you should find your theme in a new themes/custom folder. The theme should be activated by default in drupal.

## Commands Details
For details of sh commands includes in this script, see the post (in french)
http://www.fb-multimedia.fr/blog/cr%C3%A9er-theme-bootstrap-3sass-drupal-8

## Development version
This is a development tool script and it just have been tested on an ubuntu linux VM (Drupal VM). Don't use on production server.
Use at your one risk, it comes with no warranty.

## Contributors
Fred Boulanger
https://github.com/fb-multimedia
www.fb-multimedia.fr


##About the autor
Fred Boulanger is web developer since 2001 and specialized in drupal theming since 2011.
