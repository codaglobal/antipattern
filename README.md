# Anti-Pattern - Running a stateful app in a container

This pattern shows running an app (Drupal) which maintains state in both the app file system and in the database.  When one changes while the other does not, this causes stability issues.

## Using

Modify the password in the deploy.sh and run on a Linux or Mac system

## The Scenario

- Install a plugin into Drupal and create some dummy content
- Create content in Drupal
  - You may need to create content which uses the plugin
- Remove a plugin and rebuild / deploy the image
