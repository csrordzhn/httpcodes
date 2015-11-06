# Http_Codes

## Description
The idea behind this project is to have HTTP codes as a searchable list in your code or usable in pry
instead of going to Wikipedia and search for codes. In the end, its all about saving you some clicks.

The source for the codes is [Internet Assigned Numbers Authority.](http://www.iana.org/assignments/http-status-codes/http-status-codes-1.csv)

## Usage
Install at the command line,
```sh
$ gem install http_codes
```
include in your project gemfile,
```ruby
gem 'http_codes'
```
or require in directly in pry
```pry
require 'http_codes'
```
Once installed, you can run from the command line:

Search by description 'CONTINUE' will return a list of the codes that contain the value 'CONTINUE'
```sh
$ http_codes desc CONTINUE
$ 100 - CONTINUE
```
Or search by code number
```sh
$ http_codes code 100
```
