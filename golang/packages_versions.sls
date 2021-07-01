# -*- coding: utf-8 -*-
# vim: ft=sls

golang-packages_versions-module-run-test.versions_report:
  module.run:
    - name: test.versions_report

golang-packages_versions-module-run-grains.item:
  module.run:
    - name: grains.item
    - args:
      - init
      - kernel
      - kernelrelease
      - kernelversion
      - locale_info
      - lsb_distrib_codename
      - lsb_distrib_id
      - lsb_distrib_release
      - os
      - os_family
      - osarch
      - osbuild
      - oscodename
      - osfinger
      - osfullname
      - osmajorrelease
      - osmanufacturer
      - osrelease
      - osrelease_info
      - osversion
      - pythonexecutable
      - pythonpath
      - pythonversion
      - saltpath
      - saltversion
      - saltversioninfo
      - systemd
      - virtual
      - virtual_subtype
      - zmqversion

golang-packages_versions-module-run-pkg.list_pkgs:
  module.run:
    - name: pkg.list_pkgs

{#- Run this state in all cases except for OpenBSD where `pip` isn't available #}
{%- if not (grains.os_family == "OpenBSD" and salt["cmd.which_bin"](["pip", "pip3", "pip.exe"]) is none) %}
golang-packages_versions-module-run-pip.list:
  module.run:
    - name: pip.list
{%- endif %}
