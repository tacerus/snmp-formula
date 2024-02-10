{% from "snmp/map.jinja" import snmp with context %}

include:
  - snmp.trap

snmptrap_conf:
  file.managed:
    - name: {{ snmp.configtrap }}
    - template: jinja
    - context:
        config: {{ snmp.get('trapd', {}) }}
    - source: {{ snmp.sourcetrap }}
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: {{ snmp.servicetrap }}
