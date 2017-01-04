# Showcase

> This micro API is for demonstration purposes only.

I have built this _opinionated_ micro API as a demonstration of a micro service running inside an [Alpine Linux](https://hub.docker.com/r/_/alpine/) hardened container with [grsec](https://grsecurity.net/) configured, [locked down permissions](https://raw.githubusercontent.com/davidkelley/docker-base/alpine-ruby/harden.sh) and [suid files](https://blog.tutum.co/2015/02/03/hardening-containers-disable-suid-programs/) removed.

It is built to be lightweight, fast and easily expandable, by providing _eased_ interactivity through [GraphQL](https://facebook.github.io/graphql/), which can easily be incorporated into many different projects.

[dry-rb](https://github.com/dry-rb) are a set of libraries that are actively being worked on to provide solid implementation for emergent (and already well-established) behaviors inside Ruby. This demonstration API implements domain-level, isolated, modular-based classes (with `Application[...]` accessors) which are eager loaded at runtime, utilizing only _very basic_ `require` and `$LOAD_PATH` logic. System dependencies or _bulky_ third-party libraries are loaded "when required" to ensure that application overheads remain as low as possible.

[ROM](http://rom-rb.org/) removes "persistence" coupling from inside domain objects, helping to ensure that data persistence and any accompanying business logic remain strictly de-coupled. Data is persisted to specific stores using adapters standardized with well-defined interfaces.

[Roda](https://github.com/jeremyevans/roda) provides a fast, closure-style routing tree framework that provides simple syntactical sugar as a thin layer on top of Rack. However, it is not extensively used in this showcase as the implementation of GraphQL means that only one endpoint is required.

### Development

Development takes place in Docker (using docker-compose). Guard is setup to restart the server (using the `tmp_restart` plugin in Puma), test and run code analyses whenever a change is detected.

### Testing

RSpec, Rubocop and Reek are also setup to ensure code is up to standard. Coveralls provides test coverage analysis and Airborne is ensuring that any API remain easily testable. GraphQL can be [tested in isolation](http://www.rubydoc.info/github/rmosolgo/graphql-ruby/file/guides/testing.md) to ensure that schema definitions are functioning correctly.

The API is based on a few key gems:

| Gem | Stars | Summary |
|---|:---:|---|
| [puma](http://puma.io/) | ⭐️ 4,526 | A fast, concurrent web server for Ruby |
| [dry-rb](https://github.com/dry-rb) | ⭐️ ~500 | Container-based, logical encapsulation for modular applications. |
| [roda](https://github.com/jeremyevans/roda) | ⭐️ 679 | Super-lightweight routing framework |
| [graphql](https://rmosolgo.github.io/graphql-ruby/) | ⭐️ 1,378 | Solid implementation of GraphQL inside Ruby, with support for Relay |
| [rom](http://rom-rb.org/) | ⭐️ 1,323 | Super fast, modular-based persistence, type and mapping toolkit. |
