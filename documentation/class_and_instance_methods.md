###### Class and Instance Methods

Locate the ruby documentation for the methods `File::path` and `File#path`. 
How are they different?

Public Class Method:
`File::path`

path(path) -> string
returns the string representation of the path

```ruby
File.path("/dev/null) #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"
```

Public Instance Method:
`File#path`

path -> filename
to_path -> filename
returns the pathname used to create *file* as a string. Does not normalize the name.
The pathname may not point to the file correspoinding to the *file*. For instance,
the pathname becomes void when the file has been moved or deleted.

This method raises IOError for a *file* created using `File::Constants::TMPFILE` because they don't have a pathname.

`::path` is a class method that has to be called on the File class directly. It creates a new String object that represents the path and returns this String Object.
A class method provides functionality to the class itself.

`#path` is an instance method. An instance method cannot be called on the class itself, and can only be called on an instance of the class after it has been created.  An instance method provides functionality to one instance of a class.

Another way of saying this is class methods are called on the class, while instance methods are called on objects.

class: `puts File.path('bin')`
calls the class method since we're calling it on the `File` class

instance:
```ruby
f = File.new('my-file.txt')
puts f.path
```
calls the instance method since we are calling it on an object of the `File` class
