.
├── bin
│   ├── rzsh -> zsh
│   ├── zsh
│   └── zsh5
├── README1.md
└── usr
    ├── lib
    │   └── x86_64-linux-gnu
    └── share
        ├── bug
        ├── doc
        ├── lintian
        └── man

9 directories, 4 files
.
├── bin
│   ├── rzsh -> zsh
│   ├── zsh
│   └── zsh5
├── README1.md
└── usr
    ├── lib
    │   └── x86_64-linux-gnu
    └── share
        ├── bug
        ├── doc
        ├── lintian
        └── man

9 directories, 4 files
#!/bin/sh
set -e
# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section
.
├── bin
│   ├── rzsh -> zsh
│   ├── zsh
│   └── zsh5
├── README1.md
└── usr
    ├── lib
    │   └── x86_64-linux-gnu
    └── share
        ├── bug
        ├── doc
        ├── lintian
        └── man

9 directories, 4 files
#!/bin/sh
set -e
# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section
#!/bin/sh

set -e

# ksh alternatives
update-alternatives --remove ksh /usr/bin/zsh
update-alternatives --remove ksh /bin/zsh4

# Remove alternatives system for zsh in general
update-alternatives --remove zsh /bin/zsh5
update-alternatives --remove rzsh /bin/zsh5

case "$1" in
    (configure)
        add-shell /bin/zsh
        add-shell /usr/bin/zsh

	# New hardcoded symlinks which unfortunately can't be shipped inside
	# the package itself since some people want to merge /bin and /usr/bin
	# against FHS and all Unix tradition.
	if [ ! -e /usr/bin/zsh -a ! -L /usr/bin/zsh ]; then
	  ln -s /bin/zsh /usr/bin/zsh
	fi
    ;;
    (abort-upgrade|abort-remove|abort-deconfigure)
	exit 0
    ;;
    (*)
	echo "postinst called with unknown argument \`$1'" >&2
	exit 0
    ;;
esac

# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section


exit 0
#!/bin/sh

set -e

case "$1" in
	(remove)
	remove-shell /bin/zsh
	remove-shell /usr/bin/zsh

	# Remove hardcoded symlink again
	if [ -L /usr/bin/zsh ]; then
	  rm -f /usr/bin/zsh
	fi

	;;
esac

# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section

.
├── bin
│   ├── rzsh -> zsh
│   ├── zsh
│   └── zsh5
├── README1.md
└── usr
    ├── lib
    │   └── x86_64-linux-gnu
    └── share
        ├── bug
        ├── doc
        ├── lintian
        └── man

9 directories, 4 files
#!/bin/sh
set -e
# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section
#!/bin/sh

set -e

# ksh alternatives
update-alternatives --remove ksh /usr/bin/zsh
update-alternatives --remove ksh /bin/zsh4

# Remove alternatives system for zsh in general
update-alternatives --remove zsh /bin/zsh5
update-alternatives --remove rzsh /bin/zsh5

case "$1" in
    (configure)
        add-shell /bin/zsh
        add-shell /usr/bin/zsh

	# New hardcoded symlinks which unfortunately can't be shipped inside
	# the package itself since some people want to merge /bin and /usr/bin
	# against FHS and all Unix tradition.
	if [ ! -e /usr/bin/zsh -a ! -L /usr/bin/zsh ]; then
	  ln -s /bin/zsh /usr/bin/zsh
	fi
    ;;
    (abort-upgrade|abort-remove|abort-deconfigure)
	exit 0
    ;;
    (*)
	echo "postinst called with unknown argument \`$1'" >&2
	exit 0
    ;;
esac

# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section


exit 0
#!/bin/sh
set -e
# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section
#!/bin/sh

set -e

case "$1" in
	(remove)
	remove-shell /bin/zsh
	remove-shell /usr/bin/zsh

	# Remove hardcoded symlink again
	if [ -L /usr/bin/zsh ]; then
	  rm -f /usr/bin/zsh
	fi

	;;
esac

# Automatically added by dh_installdeb/13.3.4
dpkg-maintscript-helper symlink_to_dir /usr/share/doc/zsh zsh-common 5.0.7-3 -- "$@"
# End automatically added section

/home/hunt/projects/Lin/my_lab
├── bin
│   ├── rzsh -> zsh
│   ├── zsh
│   └── zsh5
├── README1.md
└── usr
    ├── lib
    │   └── x86_64-linux-gnu
    │       └── zsh
    └── share
        ├── bug
        │   └── zsh
        ├── doc
        │   └── zsh
        ├── lintian
        │   └── overrides
        └── man
            └── man1

13 directories, 5 files
