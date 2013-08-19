# Codeship

interact with Codeship

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

### States

:branchnotfound, :error, :ignored, :projectnotfound, :success, :testing, :waiting

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
