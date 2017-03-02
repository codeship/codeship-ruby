# Codeship

Interact with Codeship.

![Codeship Status for codeship/codeship-ruby](https://app.codeship.com/projects/e8bf3890-ee53-0130-957a-52ea4b2c7608/status)

## Contributing

See [CONTRIBUTING.md][contributing]

[contributing]: https://github.com/codeship/codeship-ruby/blob/master/CONTRIBUTING.md


## Installation

Add this line to your application's Gemfile:

    gem 'codeship'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install codeship

## Usage

### Check the latest Build

    project_status = Codeship::Status.new "my_project_uuid"
    project_status.status #=> :success

### Check the latest Build on a specific branch

    project_status = Codeship::Status.new "my_project_uuid", branch: "development"
    project_status.status #=> :error

### Get a list of your available projects

    projects = Codeship::Projects.new "my_api_key"
    projects.list #=> [{"id"=>1, "builds"=>[], "repository_name"=>"abcd/repo-name"}, {"id"=>2, "builds"=>[], "repository_name"=>"abcd/another-repo-name"}]

### Get a single project

    projects = Codeship::Projects.new "my_api_key"
    projects.project 1 #=> {"id"=>1, "builds"=>[], "repository_name"=>"abcd/repo-name"}


### States

:branchnotfound, :error, :ignored, :projectnotfound, :success, :testing, :waiting, stopped, :infrastructure_failure

## Disclaimer

We cannot guarantee any compatibilty with upcoming versions of this Gem.


## License

Copyright (c) 2011 Benjamin Fritsch, Codeship.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
