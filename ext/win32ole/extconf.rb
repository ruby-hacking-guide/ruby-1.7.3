#----------------------------------
# extconf.rb
# $Revision: 1.2 $
# $Date: 2002/06/03 11:44:08 $
#----------------------------------
require 'mkmf'

def create_win32ole_makefile
  if have_library("ole32") and
     have_library("oleaut32") and
     have_library("uuid") and 
     have_library("user32") and
     have_library("advapi32")
    create_makefile("win32ole")
  end
end

case RUBY_PLATFORM
when /mswin32/
  $CFLAGS='/W3'
when /mingw/
  $CFLAGS='-DNONAMELESSUNION'
when /cygwin/
  $CFLAGS='-DNONAMELESSUNION'
end
create_win32ole_makefile
