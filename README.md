##Crappy old Spaghetti Code Warning:
This app was a disaster to begin with. It was spaghetti on top of spaghetti on top of spaghetti. Although some of it has been fixed, it's still pretty awful. This repo is here to help me sync up my efforts from home with my efforts from the office. The main goal is to just get the stupid thing reasonably working, then to finish the Postgre - Laravel - Vue product.

##Computer Availability Map app 

This is the version currently in production. The project code from the code4Lib article 
can be referenced here -
https://github.com/griggsk/availability-map (*See code4lib Journal #12: How to Build a Computer Availability Map by Kim Griggs)

The code for the login and logout scripts installed on the workstations can be found here:

https://gist.github.com/priestjs/7dbd7770562087ba0876b5dd3f644dcb
###To install locally for development:
1. Create mySQL database 
2. Import tables and data with provided .sql script in root directory
3. Update the dbauth.conf file with your db info.
4. Visit index page in root directory to verify setup

*Note: The /mobile and /kiosk directories are only there for reference on how to render for different display sizes*
