{% from "snmp/map.jinja" import snmp with context %}

include:
  - .package

snmp_service:
  service.running:
    - name: {{ snmp.service }}
    - enable: true
    - require:
      - pkg: {{ snmp.pkg }}

{% if grains['os_family'] == 'Debian' and grains['osmajorrelease'] < 9 %}
include:
  - snmp.default
{% endif %}
