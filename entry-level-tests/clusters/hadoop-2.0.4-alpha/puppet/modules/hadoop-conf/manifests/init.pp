class hadoop-conf {
	# two resources in this class: two file resources.

	file {"/home/hdfsadmin/etc/":
  	        recurse => true,
        	owner => 'hdfsadmin',
        	group => 'hdfsadmin',
		mode => 0755,
		source => "puppet://$puppetserver/modules/hadoop-conf/etc",
	}

	file {"/home/mapredadmin/etc/":
  	        recurse => true,
        	owner => 'mapredadmin',
        	group => 'mapredadmin',
		mode => 0755,
		source => "puppet://$puppetserver/modules/hadoop-conf/etc",
	}

	file {"/home/hadoop/etc/":
  	        recurse => true,
        	owner => 'hadoop',
        	group => 'hadoop',
		mode => 0755,
		source => "puppet://$puppetserver/modules/hadoop-conf/etc",
	}

	file {"/home/hdfsadmin/.bashrc":
		mode => 0644,
        	owner => 'hdfsadmin',
        	group => 'hdfsadmin',
		source => "puppet://$puppetserver/modules/hadoop-conf/bashrc-hdfsadmin",
	}
	
	file {"/home/mapredadmin/.bashrc":
		mode => 0644,
        	owner => 'mapredadmin',
        	group => 'mapredadmin',
		source => "puppet://$puppetserver/modules/hadoop-conf/bashrc-mapredadmin",
	}
	
	file {"/home/hadoop/.bashrc":
		mode => 0644,
        	owner => 'hadoop',
        	group => 'hadoop',
		source => "puppet://$puppetserver/modules/hadoop-conf/bashrc-hadoop",
	}

}
