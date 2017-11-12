Completed User Stories
-----------------------

1) A visitor can create an account
2) A visitor can login with appropriate details and become an authenticated visitor
3) An authenticated visitor can create an article
4) A visitor can view an index of articles
5) A visitor can view an article with some formatting
6) An authenticated visitor can view a list or articles they authored
7) An authenticated visitor can modify an existing article they authored
8) An authenticated visitor editing an article can add and remove multiple sections from a single
article.
9) An authenticated visitor editing an article can mark a section of copy as code (js/ruby/java/c++
etc) to be displayed and styled appropriately when viewed.
10) An authenticated visitor editing an article can mark a section of copy as content to be displayed
and styled appropriately when viewed.
11) An authenticated visitor can log out
12) A visitor can search articles by title and programming language
13) A visitor with an account can reset their password via email
14) Pagination for article listing is implemented


Development Setup
-----------------

1) Clone the repository in local machine

2) The project is built in Ruby 2.3 and Rails 5.0.6 environment and MySQL as database

3) Install gems by executing the command bundle install

4) run rake db:migrate in dev and test environments

5) Search is implemented by Thinking Sphinx. Start the server by executing the following command
		rake ts:rebuild
		
		- Check the status of Thinking sphinx, if not running start and index

		rake ts:start
		rake ts:index

6) Article creation can be done in TinyMCE editor.

7) Content can be formatted to code and can change styles using its features.

8) TDD/BDD is executed using RSpec and Capybara features.
	User(Browser) behaviour is tested with Capybara in spec/features folder.
	Unit Testing (Model) is tested with RSpec in spec/models folder.


9) For Reset Password Functionality, I have not set the SMTP server details due to confidentiality on credentials in development          environment.  But one can clearly check the mail sending in console and follow the link to reset password.	

10) Run rails s	



