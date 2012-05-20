#!/usr/bin/env ruby
#
#   irb.rb - intaractive ruby
#   	$Release Version: 0.7.3 $
#   	$Revision: 1.3 $
#   	$Date: 2001/04/30 17:54:55 $
#   	by Keiju ISHITSUKA(keiju@ishitsuka.com)
#

require "irb"

if __FILE__ == $0
  IRB.start(__FILE__)
else
  # check -e option
  if /^-e$/ =~ $0
    IRB.start(__FILE__)
  else
    IRB.initialize(__FILE__)
  end
end
