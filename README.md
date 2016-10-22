My academic webpage, built with [Hyde](http://hyde.github.io/) and inspired by [@jakevdp](https://twitter.com/jakevdp).

See the rendered version at http://www.utdallas.edu/~olalekan.ogunmolu/

Building
========
Requires hyde:

    pip install hyde

	Also `texliveonfly` (for CV to be auto-generated)

Generate version for local development:

    make gen

Generate CV:

    make CV

Preview local version
(this is previewable in the browser at localhost:8080 -- Kill with ctrl-C)

    make serve

Generate site for production:

    make prod

Publish site via SFTP

    make web

Remember to change your user name in the make file as well as SFTP server domain name.

License
=======
This work is under a [BSD 2-clause license](http://opensource.org/licenses/BSD-2-Clause)

