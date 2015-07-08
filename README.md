# assoc - Associative arrays for fish shell
The aim of this plugin is to provide associative array functionality for fish shell. This is achieved using a set of simple ruby scripts. Please note that associative arrays in this plugin are immutable. Also note that this plugin is intended to be used with only a small number of keys.

## Examples
You can create a new associative array using function `assoc_create`:
```fish
$ set assoc (assoc_create key1 42 key2 24)
```
Use the `assoc_show` to show associative array in human-friendly format:
```fish
$ assoc_show $assoc # => {"key1"=>"42", "key2"=>"24"}
```
To get a value with given key use the `assoc_get` function:
```fish
$ assoc_get $assoc key2 # => 24
```
You can update your array using the `assoc_updated` function:
```fish
$ set assoc2 (assoc_updated $assoc key1 new_value)
$ assoc_show $assoc # => {"key1"=>"42", "key2"=>"24"}
$ assoc_show $assoc2 # => {"key1"=>"new_value", "key2"=>"24"}
```
To removes certain keys use the `assoc_removed` function:
```fish
$ set assoc2 (assoc_removed $assoc key1)
$ assoc_show $assoc # => {"key1"=>"42", "key2"=>"24"}
$ assoc_show $assoc2 # => {"key2"=>"24"}
```
List of all keys in an array can be obtained using `assoc_keys`:
```fish
$ assoc_keys $assoc # => key1 \n key2
```
You can also get total number of elements using `assoc_size`:
```fish
$ assoc_size $assoc # => 2
```

Finally, you can pipe multiple operations:
```fish
$ assoc_create key1 42 key2 24 |
  assoc_updated -- key3 32 |
  assoc_removed -- key2 |
  assoc_show # => {"key1"=>"42", "key3"=>"32"}
```

##Requirements
* ruby (tested with version 2.2, but probably works with other as well)

##Feedback, contribution
Your feedback is welcomed! In case of bug and/or feature improvements please leave me an issue.
