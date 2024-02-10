{%- from "snmp/map.jinja" import snmp with context %}

snmp_package:
  pkg.installed:
    - name: {{ snmp.pkg }}
