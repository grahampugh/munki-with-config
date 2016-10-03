munki-with-config
-----------------

Use The Luggage to create a Munki package with your organisation's configuration 
bundled in. 

Operation
---------

1. Install The Luggage:

If you don't already have The Luggage, install it as follows (as per [@grahamgilbert]'s blog post [The Luggage: An Introduction][2]:

{% highlight bash %}
cd
git clone https://github.com/unixorn/luggage.git
{% endhighlight %}

At this point, if you don't already have git installed, you will be prompted to do so. If that happens, install git and rerun the last command. Then continue:

{% highlight bash %}
$ cd luggage
$ make bootstrap_files
{% endhighlight %}

2. Clone this repo:

{% highlight bash %}
cd
git clone https://github.com/grahampugh/munki-with-config.git
{% endhighlight %}

3. Edit `munki_config.sh` with your organisation's configuration.

{% highlight bash %}
cd munki-with-config/installer
edit munki-config.sh
{% endhighlight %}

4. Make the package:
{% highlight bash %}
make pkg
{% endhighlight %}

Optional extras
---------------

  * Run `dmg-it.sh` to package the pkg into a dmg.

  * An uninstaller is also included here. Browse into the `uninstaller` folder and run `make pkg`.

