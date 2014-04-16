RandomEvents
============

Mini-Events will happen depending on the config file.
Small project for just about any server to run.
This is mainly built for tf2, but any game should work with it.

Planned Features (public release)
------------

* Multiple events setup with chances
* Convar to stop events from replaying, this is completly configurable.
* Plugin module adaption
  * Developers can make sub-plugins to handle certain events, passable arguments to that plugin also.
* Non-Plugin adaption
  * Don't have fancy developers making the 'next thing' you can set commands for the start of an event and the end of an event.
  * This includes if you want to give all your players random credits
* This could work as a advertisment plugin, but why use it as one...
* Custom event times.
  * The config has a 'time' attribute that can control how long the event lasts.
* Plugin module so admins can set the current and next event that will happen, and when it will happen.
  * this would be a module because i dont want it to stuff up the core base, since all the commands would use natives.
  * Starting an Event would immediately end any other event playing, and after 0.1 seconds it would play the next one.

Planned Features (private release)
------------

* Event times can be round based, so they only fire on the last round, and start when the round starts.
  * this would make it easy to make an last round boss type thing.
* Multi-Event, not in the terms of playing two events at once, although that could be a feature
  * Sub-Plugins can fire another event that is either setup in the config, or customly fired from the plugin itself.