# Lua Writer
Convert Lua tables and JSON files to Lua importable tables

This module means to present a way of easily generating Lua *importable* files with the information found in an existing Lua table variable.
For convenience, it also contains a small wrapper that allows passing the path to a JSON file to be reconstructed as an importable Lua file.

### Compatible With
This original verison supports Strings, Numbers and Boolean values (as well as tables, of course). That is unlikely to change and quite
frankly there's not much else you would really want imo.

### Why?
Lua is often used as a scripting language to patch things together or for relatively independant logic. Personally, I use config files (mostly JSON) to store most of my program constants whenever I write something since they are often generated from small GUI programs to make my life eaiser (see zaltu/story-creator repo).

In an effort to maximize performance when calling various Lua modules from C/C++, I convert my generated JSON files to Lua modules that I can still somewhat humanly edit but that are much faster when loading a large number or particularly complex set of data.

# Requires
- luajson version 1.3.4 was used when writing and testing this. Should only be necessary if you are converting JSON files, not for converting Lua tables


*Note
This is not a critique of luajson's performance. Reading language files will very obviously be faster than parsing strings. Big thanks to luajson's owners for their hard work.*