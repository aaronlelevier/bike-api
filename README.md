# REST Example using data from a MTB Bike website

This is a learning project. Trying to bring together some Erlang libraries and use together in my own small project, in order to reinforce learning from "Programming Erlang 2nd Ed." by Joe Armstrong.

Trying to bring together:

- [Cowboy](https://github.com/ninenines/cowboy)
- [Mnesia](http://erlang.org/doc/man/mnesia.html)

I Started with [Cowboy REST hello world](https://github.com/ninenines/cowboy/tree/master/examples/rest_hello_world) example. I am now tweaking to retrieve data from Mnesia, convert to JSON, and then serve via a Cowboy REST API.

# Usage

```
make run
```

Then go to [http://localhost:8080/](http://localhost:8080/)

# Licence

MIT
