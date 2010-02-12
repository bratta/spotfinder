# Gowalla Spotfinder

This is the code as shown at the OK.rb meeting on February 11th, 2010
to showcase the power of Sinatra and Rack with a fun little mashup. 

## Running the code

To run the code, you will need the bundler gem, version 0.8.1 (right now newer versions are problematic)

  sudo gem install bundler --version 0.8.1 --no-rdoc --no-ri
  
Once that is installed, cd to the directory where you cloned this repository. You will have to edit the spotfinder.rb file to contain YOUR VERY OWN Gowalla credentials and API key. Go to http://www.gowalla.com to get your own. Sorry, the enclosed ones in this repository don't work. It's a painless process and you'll thank me for it later. ;)

Once you have working credentials and an API key in the code, perform the following steps:

  gem bundle
  
  shotgun config.ru -p 4567

Once that is done you can open your browser to http://localhost:4567/ and enter the address of your choice.

Feel free to fork this and have fun with it. 