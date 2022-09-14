#! /bin/sh -Ceu
set -Ceu || exit
format_to() {
	[ ! -s "${1}" ] || echo >> "${1}"
	[ ! -s "${1}" ] && [ ! -s "${1%-alt}" ] && alt= || alt=+
	sed -- '
/^# == \(.*\) ==$/{
	s//# \1/
	'"${alt:+"s/^# A sample /# An alternative sample /"}"'
	p
	s/./=/g
	s/^../# /
}
s/, \([^,]*\), or / and \1 or /
s/, or / or /
/^# .\{71,\}/{
	s/^\(.\{,72\}\) /\1\
# /
	P
	D
}' >> "${1}"
}
me=$( command -v -- "${0}" || ls -d -- "${0}" )
me_dir=$( dirname -- "${me}" )
cd -- "${me_dir}"
unset tmpdir
trap 'rm -fr -- ${tmpdir:+ "${tmpdir}" }' EXIT
tmpdir=$( mktemp -d )
for host in '' remote.example.com
do
	for module in unset ${host:+ '' backup-module }
	do
		case ${module} in
		unset ) unset module ;;
		esac
		for user in '' ${host:+ backup-user }
		do
			for base in '' /base/dir /base/dir/.
			do
				case ${module-unset}${base} in
				/* ) continue ;;
				esac
				case ${base}/ in
				*/./* ) with_base_dir='without the base directory' ;;
				*     ) with_base_dir='with the base directory' ;;
				esac
				for scheme in '' ${module+ rsync }
				do
					case ${scheme:++},${host:++},${module++}${module:++} in
					,,     ) module_sep=   ;;
					,+,    ) module_sep=:  ;;
					,+,+   | \
					,+,++  ) module_sep=:: ;;
					+,+,+  ) module_sep=   ;;
					+,+,++ ) module_sep=/  ;;
					esac
					for port in '' ${scheme:+ 12345 }
					do
						case ${host:++},${port:++},${user:++} in
						+,,   ) using= ;;
						+,,+  ) using='using a different remote user' ;;
						+,+,  ) using='using a non-standard remote port' ;;
						+,+,+ ) using='using a non-standard remote port and a different remote user' ;;
						esac
						case ${host:++},${module++} in
						+,  ) via="via a remote shell${using:+ ${using}}" ;;
						+,+ ) via="via an rsync daemon${using:+ ${using}}" ;;
						esac
						prefix=${scheme:+${scheme}://}${user:+${user}@}${host}${port:+:${port}}${module_sep}${module-}${base}
						for name in \
							${base:+						\
							backup-src-base			mirror-src-base		} \
							${host:+						\
							backup-src-host			mirror-src-host		} \
							backup-src-list${prefix:+-alt}	mirror-src-list		\
							${module:+						\
							backup-src-module		mirror-src-module	} \
							${port:+						\
							backup-src-port			mirror-src-port		} \
							${prefix:+						\
							backup-src-prefix		mirror-src-prefix	} \
							${user:+						\
							backup-src-user			mirror-src-user		}
						do
							case ${name} in
							backup-* ) comment="Backup a${host:+ remote}${base:+ chrooted} host${base:+ ${with_base_dir}}${host:+ ${via}}" ;;
							mirror-* ) comment="Copy${host:+ remote}${base:+ chrooted} backup directories${host:+ ${via}}" ;;
							esac
							case ${name%-alt},${prefix}/ in
							mirror-*,*/./* ) ;;
							*-src-base,/*/ ) format_to "${tmpdir}/${name}" << __SRC_BASE__ ;;
# == A sample conf/${name} file ==

# ${comment}.
${prefix}
__SRC_BASE__
							*-src-host,${host}:/ ) format_to "${tmpdir}/${name}" << __SRC_HOST__ ;;
# == A sample conf/${name} file ==

# ${comment%" ${via}"}.
${host}
__SRC_HOST__
							*-src-list,${user:+${user}@}${host}::/ | \
							*-src-list,${scheme}://${user:+${user}@}${host}${port:+:${port}}/ ) ;;
							backup-src-list,* ) format_to "${tmpdir}/${name}" << __BACKUP_SRC_LIST__ ;;
# == A sample conf/${name%-alt} file ==

# Backup\
${host:+ remote}\
${base:+ chrooted}\
 /etc,\
 /home,\
 /opt,\
 /root,\
 /srv,\
 /usr/local,\
 /var/backups,\
 /var/log,\
 /var/mail and\
 /var/spool\
 directories\
${base:+ ${with_base_dir}}\
${host:+ ${via}}\
.
${prefix}/etc/
${prefix}/home/
${prefix}/opt/
${prefix}/root/
${prefix}/srv/
${prefix}/usr/local/
${prefix}/var/backups/
${prefix}/var/log/
${prefix}/var/mail/
${prefix}/var/spool/${prefix:+"

# It is also possible\
 to specify\
${user:+ ${user} in conf/backup-src-user,}\
${host:+ ${host} in conf/backup-src-host,}\
${port:+ ${port} in conf/backup-src-port,}\
${module:+ ${module} in conf/backup-src-module,}\
${base:+ ${base} in conf/backup-src-base,} or\
${host:+ to specify ${prefix}} in conf/backup-src-prefix and\
 to list only directories in conf/backup-src-list${module:+" or\
 to specify ${prefix%"${module_sep%::}${module}${base}"} in conf/mirror-src-prefix and\
 to list only modules and directories in conf/mirror-src-list"}."}
__BACKUP_SRC_LIST__
							mirror-src-list,*${base:-/base/dir}/ ) ;;
							mirror-src-list,* ) format_to "${tmpdir}/${name}" << __MIRROR_SRC_LIST__ ;;
# == A sample conf/${name} file ==

# Copy${host:+ remote}${base:+ chrooted} backup directories${host:+ ${via}}.
${prefix}/srv/backup/localhost/.${prefix:+"

# It is also possible\
 to specify\
${user:+ ${user} in conf/mirror-src-user,}\
${host:+ ${host} in conf/mirror-src-host,}\
${port:+ ${port} in conf/mirror-src-port,}\
${module:+ ${module} in conf/mirror-src-module,}\
${base:+ ${base} in conf/mirror-src-base,} or\
${host:+ to specify ${prefix}} in conf/mirror-src-prefix and\
 to list only directories in conf/mirror-src-list${module:+" or\
 to specify ${prefix%"${module_sep%::}${module}${base}"} in conf/mirror-src-prefix and\
 to list only modules and directories in conf/mirror-src-list"}."}
__MIRROR_SRC_LIST__
							*-src-module,${host}::${module:-module}/ ) format_to "${tmpdir}/${name}" << __SRC_MODULE__ ;;
# == A sample conf/${name} file ==

# ${comment} using a specific module.\
 The remote host must be specified in conf/${name%-*}-host.
${module%-module}
__SRC_MODULE__
							*-src-port,rsync://${host}:${port}/${module:-module}/ ) format_to "${tmpdir}/${name}" << __SRC_PORT__ ;;
# == A sample conf/${name} file ==

# ${comment}.\
 The remote host must be specified in conf/${name%-*}-host and\
 the remote module must be specified in conf/${name%-*}-module.
${port}
__SRC_PORT__
							*-src-prefix,?*/ ) format_to "${tmpdir}/${name}" << __SRC_PREFIX__ ;;
# == A sample conf/${name} file ==

# ${comment}.
${prefix}
__SRC_PREFIX__
							*-src-user,${user}@${host}:/ ) format_to "${tmpdir}/${name}" << __SRC_USER__ ;;
# == A sample conf/${name} file ==

# ${comment%" ${via}"} ${using}.
# The remote host must be specified in conf/${name%-*}-host.
${user%-user}
__SRC_USER__
							esac
						done
					done
				done
			done
		done
	done
done
for i in "${tmpdir}"/*
do
	diff -Nsu -- "${i##*/}" "${i}" || [ "${?}" = 1 ]
done
