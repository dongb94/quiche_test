How to build C examples
-----------------------

### Requirements

You will need the following libraries to build the C examples in this directory.
You can use your OS package manager (brew, apt, pkg, ...) or install them from
source.

- [libev](http://software.schmorp.de/pkg/libev.html)
- [uthash](https://troydhanson.github.io/uthash/)

### Build

To build [client](client.cpp) and [server](server.cpp),
Simply run `cmake` in build directory.

```
% mkdir build && cd build
% cmake ..
% make
% cp ../cert* ./
```
