# necessary when requiring fog without rubygems while also
# maintaining ruby 1.8.7 support (can't use require_relative)
__LIB_DIR__ = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift __LIB_DIR__ unless $LOAD_PATH.include?(__LIB_DIR__)

# any one of these can be required separately.
# they all depend on fog/core for shared functionality.
require 'fog/atmos'
require 'fog/aws'
require 'fog/bluebox'
require 'fog/brightbox'
require 'fog/cloudstack'
require 'fog/clodo'
require 'fog/digitalocean'
require 'fog/dnsimple'
require 'fog/dnsmadeeasy'
require 'fog/dreamhost'
require 'fog/dynect'
require 'fog/ecloud'
require 'fog/glesys'
require 'fog/go_grid'
require 'fog/google'
require 'fog/hp'
require 'fog/ibm'
require 'fog/internet_archive'
require 'fog/joyent'
require 'fog/libvirt'
require 'fog/linode'
require 'fog/local'
require 'fog/bare_metal_cloud'
require 'fog/ninefold'
require 'fog/rackspace'
require 'fog/riakcs'
require 'fog/openstack'
require 'fog/ovirt'
require 'fog/serverlove'
require 'fog/storm_on_demand'
require 'fog/terremark'
require 'fog/vcloud'
require 'fog/vmfusion'
require 'fog/vsphere'
require 'fog/voxel'
require 'fog/xenserver'
require 'fog/zerigo'
require 'fog/cloudsigma'
require 'fog/openvz'

module Fog
  @@capture_request = false
  @@captured_params = nil

  def self.capture_request; @@capture_request end
  def self.capture_request=(value); @@capture_request = value end
  def self.captured_params; @@captured_params end
  def self.captured_params=(value); @@captured_params = value end
end
