# Home Assistant with Selenium

This is a fork of https://github.com/home-assistant/home-assistant

See official documentation from there.

Inspired by https://github.com/taskinen/home-assistant

## New features

Added [Selenium](https://www.seleniumhq.org/) with the Chrome driver into the Home Assistant docker instance

## Why?

In order to monitor the charge status of my Chevy Volt via the [myChevy]() component, I needed my Home Assistant instance to include the Selenium software package.  While this is relatively easy to install on bare-metal configurations, making it persistent in my Docker configuration requires either janky installation into the config path or Doing It Right(tm).
