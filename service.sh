#! /bin/bash


case "$1" in 
    0)
	servicesComp="chronyd"
	servicesCont="chronyd mariadb"
	servicesNetw="chronyd"
	servicesStor="chronyd"
	;;
    1)
	servicesComp="network chronyd "  
	servicesCont="network chronyd "
	servicesNetw="network chronyd "
	servicesStor="network chronyd "
	;;
    2)
	servicesComp=""
	servicesCont="rabbitmq-server"
	servicesNetw=""
	servicesStor=""
	;;
    3)
	servicesComp=""
	servicesCont="openstack-keystone"
	servicesNetw=""
	servicesStor=""
	;;
    4)
	servicesComp=""
	servicesCont="openstack-glance-api"
	servicesNetw=""
	servicesStor=""
	;;
    5)
	servicesComp="libvirtd openstack-nova-compute"
	servicesCont="openstack-nova-api openstack-nova-cert openstack-nova-consoleauth openstack-nova-scheduler openstack-nova-conductor openstack-nova-novncproxy"
	servicesNetw=""
	servicesStor=""
	;;
    6)
	servicesComp="openvswitch neutron-openvswitch-agent openstack-nova-compute"
	servicesCont="openstack-nova-api openstack-nova-scheduler openstack-nova-conductor neutron-server"
	servicesNetw="openvswitch neutron-openvswitch-agent neutron-l3-agent neutron-dhcp-agent neutron-metadata-agent neutron-ovs-cleanup"
	servicesStor=""
	;;
    7)
	servicesComp=""
	servicesCont="httpd memcached"
	servicesNetw=""
	servicesStor=""
	;;
    8)
	servicesComp=""
	servicesCont="openstack-cinder-api openstack-cinder-scheduler.servic"
	servicesNetw=""
	servicesStor="openstack-cinder-volume target"
	;;
    9)
	servicesComp=""
	servicesCont="openstack-swift-proxy memcached"
	servicesNetw=""
	servicesStor="rsyncd openstack-swift-account openstack-swift-account-auditor openstack-swift-account-reaper openstack-swift-account-replicator systemctl start openstack-swift-container openstack-swift-container-auditor openstack-swift-container-replicator openstack-swift-container-updater openstack-swift-object openstack-swift-object-auditor openstack-swift-object-replicator openstack-swift-object-updater"
	;;
    10)
	servicesComp=""
	servicesCont="openstack-heat-api openstack-heat-api-cfn openstack-heat-engine"
	servicesNetw=""
	servicesStor=""
	;;
    11)
	servicesComp="openstack-ceilometer-compute openstack-nova-compute"
	servicesCont="openstack-ceilometer-api openstack-ceilometer-notification openstack-ceilometer-central openstack-ceilometer-collector openstack-ceilometer-alarm-evaluator openstack-ceilometer-alarm-notifier mongod"
	servicesNetw=""
	servicesStor=""
	;;
esac
