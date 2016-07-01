# -*- coding: utf-8 -*-
# vim: ft=yaml

include:
  - etcd.install

etcd-upstart-override:
  file.managed:
    - name: /etc/default/etcd.env
    - source: salt://etcd/files/etcd.env.static.jinja
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
    - watch_in:
        service: etcd-service

