##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Pixel-Ads-Script" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-08
version "0.1"
description "Pixel Ads Script - homepage: http://www.pixel-ads-script.com/"
# Homepage is on a non-existant domain - software no longer supported?

# 27 results for "Powered by: Pixel-Ads-Script.Com" @ 2010-08-08
examples %w|
www.10dollarpixelblock.com/index.php
tweexel.com
www.e3laan.com
bwino.org/sahayta/
www.drdshat.com
scrappixels.com
www.nordicmillioneurosite.com
www.drdshat.com
ivoire-pub.com
yasturk.com/~myuser/
yasturk.net/~myuser/
|

matches [

{ :text=>'<a href="index.php?magnify=1">Magnifier On</a></div>' },
{ :text=>'<a href="index.php?magnify=1">Zoom On</a></div>' },

{ :text=>'  <title>Pixel Ads Script</title>' },
{ :text=>'  <title>Scrap Pixels - Pixel List</title>' },
{ :text=>'  <title>Pixel Ads Script Administration - Administrator Login</title>' },

{ :text=>'          <td width="850" class="sitetitle">Pixel Ads Script' },

{ :regexp=>/          <td width="150" class="statsbox" bgcolor="#FFFFFF"><strong>Pixels Sold:<\/strong> [\d\,]+<br>/ },

{ :text=>' href="http://www.pixel-ads-script.com">Powered by: Pixel-Ads-Script.Com</a></div>' }

]


end

