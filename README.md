## Google Drive Email Saver

Quickly and easily save emails to a column in Google Drive spreadsheet.


### How it works

```ruby
require './google-drive-email-saver.rb'

# where 8675309abcdef is the spreadsheet key
g = GoogleDriveEmailSaver.new('me@gmail.com', 'passwd123456', '8675309abcdef') 
g.save_email('person.who@justsignedup.com')
```

### How to get spreadsheet key
You'll find the spreadsheet key as a query param in the url of the spreadsheet on Google Drive. It's behind the `?key=` param.  

```
https://docs.google.com/a/briangonzalez.org/spreadsheet/ccc?key=<< SPREADSHEET_KEY >>#gid=0
```

### Dependency
Relies on the [google-drive-ruby](https://github.com/gimite/google-drive-ruby) gem:

`gem install google-drive-ruby`

### Questions

Hit me up on Twitter, [@brianmgonzalez](http://twitter.com/brianmgonzalez).