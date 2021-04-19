# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as lacework with context %}

lacework-service-clean-service-dead:
  service.dead:
    - name: {{ lacework.service.name }}
    - enable: False
