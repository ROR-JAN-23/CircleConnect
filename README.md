# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


# App Functionalities

Rails App: CircleConnect
Database: postgres
Ruby Version: 3.1.0
Rails Version: 7

Note:
1. Never push on Master on Main Branch
2. Create Proper PR for any new functionalities
3. Commit should be in proper way
4. Code should be DRY


The platform offers the following features for user authentication and management:
Sign Up, Log In, and Log Out: Users can create an account, log in to their account, and log out from the platform.
Welcome Email: A welcome email is sent to new users upon signing up. The email contains information about the platform and instructions on how to get started.
Password Reset: Users can request a password reset by providing their email address. A password reset link is sent to the email address for resetting the password.
Profile Management: Users can create and edit their profiles, including adding a profile picture(Active Storage), bio, and personal information.
Post Creation: Users can create and publish posts that include text, images, and videos.
Commenting: Users can comment on other users' posts and reply to comments.
Likes and Reactions: Users can like and react to posts with various reactions such as love, laugh, wow, sad, and angry.
Notifications: Users receive notifications for activities such as new posts, comments, and likes on their posts.
Search: Users can search for other users, posts, and hashtags.
Hashtags: Posts can be tagged with hashtags, enabling users to find posts related to specific topics.
Friends and Followers: Users can follow and unfollow other users, and see a list of their friends and followers.
Privacy Settings: Users can control their privacy settings, including who can see their posts and profile information.
Stories: Users can create and share short-lived posts in the form of stories that disappear after 24 hours.
Reporting and Blocking: Users can report inappropriate content or behavior, and a system is implemented for blocking users who violate the terms of service.
Other features of the platform include:
Admin Panel: An admin panel is available for managing the platform and its features.
Integration with Other Platforms: Users can log in or sign up using their accounts on other platforms such as Facebook, Twitter, or Google. Users can also share their posts on other social media platforms.
Background Jobs: Sidekiq is used for performing background jobs such as sending emails, processing image uploads, or performing complex calculations.


