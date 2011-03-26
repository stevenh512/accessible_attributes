# accessible_attributes [![Travis-CI][4]][3]

Dynamic attr_accessible for Active Record, inspired by Ryan Bates [Railscasts]
episode 237.



[![Click here to lend your support to: accessible_attributes and make a donation at www.pledgie.com !][2]][1]

## Installation

Add the following line to your `Gemfile`
    gem 'accessible_attributes'

Then run `bundle install` and you're good to go.

## Usage

This gem sets `attr_accessible` to `nil` on `ActiveRecord::Base`, requiring you to use
`attr_accessible` in all of your Active Record models to enable mass-assignment.

In your controllers, to mass-assign attributes that are not enabled by default, see the following example
    @model = Model.new
    @model.accessible = :my_attribute
    @model.attributes = params[:model]

You can also set `accessible` to `:all` to make all attributes available for mass-assignment
    @model = Model.new
    @model.accessible = :all
    @model.update_attributes(params[:model])

For more information, see the [Railscasts] episode or read it on [Asciicasts]

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a
  commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Steven Hancock. See MIT-LICENSE for details.

[1]: http://www.pledgie.com/campaigns/14171
[2]: http://www.pledgie.com/campaigns/14171.png?skin_name=chrome
[3]: http://travis-ci.org/stevenh512/accessible_attributes
[4]: http://travis-ci.org/stevenh512/accessible_attributes.png
[Railscasts]: http://railscasts.com/episodes/237-dynamic-attr-accessible
[Asciicasts]: http://asciicasts.com/episodes/237-dynamic-attr-accessible

