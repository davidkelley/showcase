# Showcase

> This micro API is for demonstration purposes only.

I have built this _opinionated_ micro API as a demonstration of a micro service running inside an [Alpine Linux]() hardened container with [grsec]() configured, [locked down permissions]() and [suid files]() removed.

It is built to be lightweight, fast and easily expandable, by providing _eased_ interactivity through [GraphQL](), which can easily be incorporated into many different projects.

> Although not demonstrated inside this project, a GraphQL schema can be formally defined inside a logical, structured set of definitions and loaded as a functional graph directly into the project.

The API is based on a few key gems:
* [puma](http://puma.io/) (⭐️ 4,526) - Arguably the fastest concurrent web server for Ruby
* [dry-rb](https://github.com/dry-rb) (⭐️ ~500) - Container-based, logical encapsulation for modular applications.
* [roda](https://github.com/jeremyevans/roda) (⭐️ 679) - A super-lightweight routing framework
* [graphql](https://rmosolgo.github.io/graphql-ruby/) (⭐️ 1,378) - A solid implementation of GraphQL inside Ruby, with support for Relay
* [rom](http://rom-rb.org/) (⭐️ 1,323) - A super fast, modular-based persistence, type and mapping toolkit.
