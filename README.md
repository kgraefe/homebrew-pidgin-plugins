# Homebrew Pidgin Plugins

This is a [brew](https://brew.sh/) for install Pidgin plugins on MacOS.
Currently this tap has the following formulas:
- `pidgin-extended-blist-sort`
- `pidgin-save-conv-order`
- `pidgin-toolbar-shrink`
- `pidgin-unhighlight-system-messages`
- `pidgin-znc-helper`
- `purple-history-since`

## How to use
```
$ brew tap kgraefe/pidgin-plugins
$ brew install <formula>
```

When Pidgin is installed through `brew` it looks for its plugin only in its own
cellar and in the users home directory (`~/.purple/plugins`). Therefore to use
the plugins installed from this tap you must link them into your personal
`.purple` directory:

```
$ ln -s /usr/local/lib/pidgin ~/.purple/plugins
```

## How to uninstall
```
$ brew uninstall <formula>
$ brew untap kgraefe/pidgin-plugins
```
## Contributions
We love patches. :heart: Please fork the project, do your changes and make a
pull request.

We would be especially happy if we could find a clean way to install the
plugins so that Pidgin recognizes them automatically.

Additional plugins are very welcomed too.
