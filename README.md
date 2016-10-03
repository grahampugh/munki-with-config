munki-with-config
-----------------

Use The Luggage to create a Munki package with your organisation's configuration 
bundled in. 

Operation
---------

*1. Install The Luggage:*

If you don't already have The Luggage, install it as follows (as per [@grahamgilbert]'s blog post [The Luggage: An Introduction][2]:

```bash
cd
git clone https://github.com/unixorn/luggage.git
```

At this point, if you don't already have git installed, you will be prompted to do so. If that happens, install git and rerun the last command. Then continue:

```bash
$ cd luggage
$ make bootstrap_files
```

*2. Clone this repo:*

```bash
cd
git clone https://github.com/grahampugh/munki-with-config.git
```

*3. Edit `munki_config.sh` with your organisation's configuration.*

```bash
cd munki-with-config/installer
edit munki-config.sh
```

*4. Make the package:*
```bash
make pkg
```

Optional extras
---------------

  * Run `dmg-it.sh` to package the pkg into a dmg.

  * An uninstaller is also included here. Browse into the `uninstaller` folder and run `make pkg`.

[1]: https://derflounder.wordpress.com/2015/03/13/deploying-a-pre-configured-junos-pulse-vpn-client-on-os-x/
[2]: http://grahamgilbert.com/blog/2013/08/09/the-luggage-an-introduction/
[@grahamgilbert]: https://twitter.com/grahamgilbert

