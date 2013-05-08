class hadoopetc {
	# two resources in this class: two file resources.


	file { "/home/hadoop/etc/":
		ensure => directory, 
  	        recurse => true,
		owner => "hadoop",
		group => "hadoop",
		mode => 0755,
		source => "puppet://$puppetserver/modules/hadoopetc/home/hadoop/etc/",
	}

	file { "/home/hadoop/.bashrc":
		owner => "hadoop",
		group => "hadoop",
		mode => 0644,
		source => "puppet://$puppetserver/modules/hadoopetc/home/hadoop/.bashrc",
	}
}
