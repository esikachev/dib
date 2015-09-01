#!/usr/bin/env bash

mv centos_sahara_vanilla_hadoop_2_6_latest.selinux-permissive.qcow2 sahara-kilo-vanilla-2.6.0-centos-6.6.qcow2
mv ubuntu_sahara_vanilla_hadoop_2_6_latest.qcow2 sahara-kilo-vanilla-2.6.0-ubuntu-14.04.qcow2
mv ubuntu_sahara_cloudera_5_4_0.qcow2 sahara-kilo-cdh-5.4.0-ubuntu-12.04.qcow2
mv centos_sahara_cloudera_5_4_0.qcow2 sahara-kilo-cdh-5.4.0-centos-6.6.qcow2
mv ubuntu_sahara_spark_latest.qcow2 sahara-kilo-spark-1.3.1-ubuntu-14.04.qcow2
mv centos_sahara_ambari.qcow2 sahara-kilo-ambari-2.2-centos-6.6.qcow2
mv ubuntu_trusty_mapr_4.0.2_latest.qcow2 sahara-kilo-mapr-4.0.2-ubuntu-14.04.qcow2
mv centos_6.6_mapr_4.0.2_latest.qcow2 sahara-kilo-mapr-4.0.2-centos-6.6.qcow2

mkdir kilo
mv sahara-kilo* kilo
