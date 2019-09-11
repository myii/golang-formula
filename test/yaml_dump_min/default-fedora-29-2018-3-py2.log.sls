.../golang-formula/.kitchen/yaml_dump/Fedora-29-2018.3.0-n/a-a194eba-py2.yaml
added_in_defaults: defaults_value
added_in_lookup: lookup_value
added_in_pillar: pillar_value
arch: amd64
base_dir: /usr/local/go1.10.1.linux-amd64
config: /etc/golang
dir: /usr/local/go
environ:
- export PATH=${PATH}:/usr/local/go1.10.1.linux-amd64
environ_file: /etc/default/golang.sh
go_path: /usr/local/golang/packages
kernel: linux
linux:
  altpriority: 1000
lookup:
  master: golang-master
  winner: lookup
  added_in_lookup: lookup_value
master: golang-master
pkg:
  archive:
    archive_format: tar
    archive_suffix: tar.gz
    enforce_toplevel: true
    name: /usr/local/go1.10.1.linux-amd64
    source: https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz
    source_hash: https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz.sha256
    trim_output: true
    uri: https://storage.googleapis.com/golang
  name: go
  repo: {}
  use_upstream_archive: true
  use_upstream_repo: false
rootgroup: root
service:
  name: golang
tofs:
  files_switch:
  - any/path/can/be/used/here
  - id
  - osfinger
  - os
  - os_family
  source_files:
    golang-config-file-file-managed:
    - example.tmpl.jinja
version: 1.10.1
winner: pillar