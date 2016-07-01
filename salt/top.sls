base:
  'etcd-*':
    - etcd.static
  'salt-master':
    - etcd.gce-cluster
