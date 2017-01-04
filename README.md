# Showcase

> This micro API is for demonstration purposes only.

I have built this _opinionated_ micro API as a demonstration of a micro service running inside an [Alpine Linux]() hardened container with [grsec](https://grsecurity.net/) configured, [locked down permissions](https://raw.githubusercontent.com/davidkelley/docker-base/alpine-ruby/harden.sh) and [suid files](https://blog.tutum.co/2015/02/03/hardening-containers-disable-suid-programs/) removed.

It is built to be lightweight, fast and easily expandable, by providing _eased_ interactivity through [GraphQL](https://facebook.github.io/graphql/), which can easily be incorporated into many different projects.

> Although not demonstrated inside this project, a GraphQL schema can be formally defined inside a logical, structured set of definitions and loaded as a functional graph directly into the project.

The API is based on a few key gems:

| Gem | Stars | Summary |
|---|:---:|---|
| [puma](http://puma.io/) | ⭐️ 4,526 | A fast, concurrent web server for Ruby |
| [dry-rb](https://github.com/dry-rb) | ⭐️ ~500 | Container-based, logical encapsulation for modular applications. |
| [roda](https://github.com/jeremyevans/roda) | ⭐️ 679 | Super-lightweight routing framework |
| [graphql](https://rmosolgo.github.io/graphql-ruby/) | ⭐️ 1,378 | Solid implementation of GraphQL inside Ruby, with support for Relay |
| [rom](http://rom-rb.org/) | ⭐️ 1,323 | Super fast, modular-based persistence, type and mapping toolkit. |
