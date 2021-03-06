##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Stronghold" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-09-04
version "0.1"
description "Stronghold was a fork of the Apache HTTP Server. Stronghold was created by C2Net, which was eventually purchased by Red Hat. Red Hat Stronghold products are no longer available for purchase. - Homepage: https://www.redhat.com/software/stronghold/"

# ShodanHQ results as at 2011-09-04 #
# 1,179 for Stronghold

# Examples #
examples %w|
206.204.3.187
216.218.241.224
216.218.198.207
216.235.71.157
194.42.236.63
63.94.171.93
216.218.198.151
192.82.11.15
216.235.74.250
|

# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^Stronghold$/ },

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Stronghold\/([^\s]+)/ },

# C2Net String
{ :search=>"headers[server]", :string=>/(C2Net[A-Z]{2}\/[^\s]+)/ },

]

end

