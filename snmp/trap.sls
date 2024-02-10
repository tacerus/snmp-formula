{% from "snmp/map.jinja" import snmp with context %}

include:
  - .package
  - .conftrap

trap:
  service.running:
    - name: {{ snmp.servicetrap }}
    - enable: true
    - require:
        - pkg: {{ snmp.pkg }}
