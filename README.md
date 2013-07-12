Stackato Racket Example
=======================

This example uses the buildpack
https://github.com/philwhln/stackato-buildpack-racket

Steps for running this example
------------------------------

1. Download Stackato VM http://www.activestate.com/stackato

2. Run the Stackato VM on VMware or VirtualBox

3. Create first user via web-console (see booted VM display for web-console URL)

4. Run these commands...

```
$ stackato target <VM URL>
$ stackato login <first user username>
Password: *******
$ git clone <this git repo>
$ cd stackato-racket-example/
$ stackato push --no-prompt
$ stackato open
```

This last line with open the app in your browser.
