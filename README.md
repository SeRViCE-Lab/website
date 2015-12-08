My academic webpage, built with [Hyde](http://hyde.github.io/) and inspired by [@jakevdp](https://twitter.com/jakevdp).

See the rendered version at http://www.utdallas.edu/~olalekan.ogunmolu/

Building
========
Requires hyde:

    pip install hyde

Also pdflatex (for CV to be auto-generated)

Generate version for local development:

    make gen

Preview local version
(this is previewable in the browser at localhost:8080 -- Kill with ctrl-C)

    make serve

Generate site for production:

    make gen-production

Publish site via SSH (SSH publisher requires hyde version > 0.8.6):

    make sync

Remember to change your user name in the make file as well as ssh server domain name.

License
=======
This work is under a [BSD 2-clause license](http://opensource.org/licenses/BSD-2-Clause)

