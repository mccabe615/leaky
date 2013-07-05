leaky
=====

Rails 3.2 leaks when you 'create' a model.

This application was created using the following steps:
* rails new leaky
* install/configure rspec
* rails g resource Foo name
* edit foo_spec.rb
* tweak the Gemfile

If you run rake spec, you will see that all 1000 created Foo's fail to be garbage collected.

If you edit the Gemfile to use rails 4 and then re-run the spec, you will see that the Foos (mostly) get garbage collected - just as expected.
