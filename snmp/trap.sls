{% from "snmp/map.jinja" import snmp with context %}

trap:
  service.running:
    - name: {{ snmp.servicetrap }}
    - enable: true
