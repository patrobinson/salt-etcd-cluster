# salt-etcd-cluster
An etcd stack implemented in salt, inspired by https://github.com/saltstack-formulas/etcd-formula

This is based off debian, but should work with any linux distro that uses systemd.

It supports GCE for launching and provisioning the etcd instances.

It depends on a local salt-master in the same network and an SSH key on the host for the user `salt-master` which is installed on the salt master

# Caveats

To run `etcdctl` you need to specify the local ip address like so:

```sh
/opt/etcd/etcdctl -C ${IP}:2379 member list
```
