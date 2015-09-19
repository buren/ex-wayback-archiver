WaybackArchiver
==================

Send URLs to the Wayback Machine.


## Usage

```elixir
HTTPotion.start()
ExWaybackArchiver.save(["http://example.com"])
```


## Install

Add the following to your project :deps list:

```elixir
{:wayback_archiver, "~>0.0.1"},
{:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"}
```

## Contribute

This is the first program I ever written in Elixir. Contributions, feedback and suggestions of any kind are very welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## TODO

* Implement a proper crawler (current implementation just grabs URLs from the first page)
  - Expand relative URLs
  - Spawn processes
* Wayback Machine archiver
  - Spawn processes

## License

[MIT License](LICENSE)
