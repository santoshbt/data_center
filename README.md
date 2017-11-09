Completed User Stories
-----------------------

A visitor can create an account
A visitor can login with appropriate details and become an authenticated visitor
An authenticated visitor can create an article
A visitor can view an index of articles
A visitor can view an article with some formatting
An authenticated visitor can view a list or articles they authored
An authenticated visitor can modify an existing article they authored
An authenticated visitor editing an article can add and remove multiple sections from a single
article.
An authenticated visitor editing an article can mark a section of copy as code (js/ruby/java/c++
etc) to be displayed and styled appropriately when viewed.
An authenticated visitor editing an article can mark a section of copy as content to be displayed
and styled appropriately when viewed.
An authenticated visitor can log out
A visitor can search articles by title and programming language
A visitor with an account can reset their password via email


Development Setup
-----------------

1) Clone the repository in local machine

2) The project is built in Ruby 2.3 and Rails 5.0.6 environment and MySQL as database

3) Install gems by executing the command bundle install

4) run rake db:migrate in dev and test environments

5) Search is implemented by Thinking Sphinx. Start the server by executing the following command
		rake ts:rebuild
		rake ts:start

6) Article creation can be done in TinyMCE editor.

7) Content can be formatted to code and can change styles using its features.

8) TDD/BDD is executed using RSpec and Capybara features.
	User behaviour is tested with Capybara
	Unit Testing (Model) is tested with RSpec

9) For Reset Password Functionality, I have not set the SMTP server details due to confidentiality on credentials in development          environment.  But one can clearly check the mail sending in console and follow the link to reset password.	

	



