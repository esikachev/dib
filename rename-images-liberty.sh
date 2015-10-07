#!/usr/bin/env bash

mv centos_sahara_vanilla_hadoop_2_7_1_latest.selinux-permissive.qcow2 sahara-liberty-vanilla-2.7.1-centos-6.6.qcow2
mv centos7_sahara_vanilla_hadoop_2_7_1_latest.selinux-permissive.qcow2 sahara-liberty-vanilla-2.7.1-centos-7.qcow2
mv ubuntu_sahara_vanilla_hadoop_2_7_1_latest.qcow2 sahara-liberty-vanilla-2.7.1-ubuntu-14.04.qcow2
mv ubuntu_sahara_cloudera_5_4_0.qcow2 sahara-liberty-cdh-5.4.0-ubuntu-12.04.qcow2
mv centos_sahara_cloudera_5_4_0.qcow2 sahara-liberty-cdh-5.4.0-centos-6.6.qcow2
mv ubuntu_sahara_spark_latest.qcow2 sahara-liberty-spark-1.3.1-ubuntu-14.04.qcow2
mv centos_sahara_ambari.qcow2 sahara-liberty-ambari-2.2-centos-6.6.qcow2
mv ubuntu_trusty_mapr_5.0.0_latest.qcow2 sahara-liberty-mapr-5.0.0-ubuntu-14.04.qcow2
mv centos_6.6_mapr_5.0.0_latest.qcow2 sahara-liberty-mapr-5.0.0-centos-6.6.qcow2
mv centos-6_6-64-hdp-2-0.qcow2 sahara-liberty-hdp-2.0.6-centos-6.6.qcow2
mv ubuntu_sahara_storm_latest_0.9.2.qcow2 sahara-liberty-storm-0.9.2-ubuntu-14.04.qcow2

mkdir liberty
mv sahara-liberty* liberty
