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
```ruby
require 'http_codes'
```
Once installed, you can run from the command line.
```sh
$ http_codes desc/code val
```
Search by description 'BAD' will return a list of the codes that contain the value 'BAD':
```sh
$ http_codes desc BAD
400 - BAD REQUEST
502 - BAD GATEWAY
```
Search by code number 100 will return the description that matches that code:
```sh
$ http_codes code 100
100 - CONTINUE
```
