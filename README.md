# Homebrew Pidgin Plugins

This is a [brew](https://brew.sh/) tap for Pidgin plugins on MacOS.  Currently
this tap has the following formulas:
- [pidgin-birthday-reminder](https://github.com/kgraefe/pidgin-birthday-reminder)
- [pidgin-extended-blist-sort](https://github.com/kgraefe/pidgin-extended-blist-sort)
- [pidgin-master-password](https://github.com/kgraefe/pidgin-master-password)
- [pidgin-save-conv-order](https://github.com/kgraefe/pidgin-save-conv-order)
- [pidgin-toolbar-shrink](https://launchpad.net/pidgin-toolbar-shrink)
- [pidgin-unhighlight-system-messages](https://github.com/kgraefe/pidgin-unhighlight-system-messages)
- [pidgin-znc-helper](https://github.com/kgraefe/pidgin-znc-helper)
- [purple-add-prefix](https://github.com/kgraefe/purple-add-prefix)
- [purple-history-since](https://github.com/kgraefe/purple-history-since)
- [purple-icyque](https://github.com/EionRobb/icyque)

## How to use
```
$ brew tap kgraefe/pidgin-plugins
$ brew install purple-add-prefix
$ mkdir -p ~/.purple/plugins/
$ ln -s /usr/local/lib/purple-2/purple-add-prefix.so ~/.purple/plugins/
$ brew install <formula>
```

When Pidgin is installed through `brew` it looks for its plugin only in its own
cellar and in the users home directory (`~/.purple/plugins`).
`purple-add-prefix` fixes the situation by adding `/usr/local/lib` to the
search path. However, in order to be loaded it must be linked into the personal
plugin directoy (`~/.purple/plugins`) of each user.

## How to uninstall
```
$ brew uninstall <formula>
$ brew uninstall purple-add-prefix
$ brew untap kgraefe/pidgin-plugins
```

## Contributions
We love patches. :heart: Please fork the project, do your changes and make a
pull request.

We would be especially happy if we could find a clean way to install the
plugins so that Pidgin recognizes them automatically.

Additional plugins are very welcomed too.
