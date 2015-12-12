# webapp_final
#Project helpers
  This project makes use of Sqlite3 for the database and makes use of the following gems: 
  <ul>
    <li>'devise' for users and authentication</li>
    <li>'jquery' for javascript functionality</li>
    <li>'bootstrap-sass' for style (mainly buttons and tables)</li>
    
# Computer trading post
  The idea behind this project was to create a website that allowed people to post computers they were selling.  Users could build a computer from selecting parts.  If a part doesn't exist the user can add a part to the list.  Once all the form fields have been filled out and submitted the computer will apear in the users list of computers they are selling.  This new listing will also reflect in the all users computer list.
  
#Database
  The database uses Sqlite3.  It revolves mainly around one table, computer.  Computer stores foreign keys to everything... cpu, motherboard, users, etc.  All other tables compose just of an id and a name field.  Users table is generated from the 'devise' gem and is modified to include a name field.  

#Controllers
  The two main controllers in this project are computer and home.  Home controller is present to serve as a landing page for the website.  Computers controller handles the majority of the project.  It shows an index view, listing all computers, and a show view, listing a users specific computer listings.  The controller has a search bar function built in for the index page.  When a user submits the search form on the index page this function is executed and queries the database for the requested query.  There is a controller present for every other table that handles the insertion of new rows.
