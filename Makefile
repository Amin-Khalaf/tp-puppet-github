all:
	git pull && /opt/puppetlabs/bin/puppet apply manifests/init.pp
