#
#   irb/lc/error.rb - 
#   	$Release Version: 0.9$
#   	$Revision: 1.3 $
#   	$Date: 2002/07/09 11:17:17 $
#   	by Keiju ISHITSUKA(keiju@ishitsuka.com)
#
# --
#
#   
#
require "e2mmap"

module IRB

  # exceptions
  extend Exception2MessageMapper
  def_exception :UnrecognizedSwitch, "Unrecognized switch: %s"
  def_exception :NotImplementError, "Need to define `%s'"
  def_exception :CantRetuenNormalMode, "Can't return normal mode."
  def_exception :IllegalParameter, "Illegal parameter(%s)."
  def_exception :IrbAlreadyDead, "Irb is already dead."
  def_exception :IrbSwitchToCurrentThread, "Change to current thread."
  def_exception :NoSuchJob, "No such job(%s)."
  def_exception :CanNotGoMultiIrbMode, "Can't go multi irb mode."
  def_exception :CanNotChangeBinding, "Can't change binding to (%s)."
  def_exception :UndefinedPromptMode, "Undefined prompt mode(%s)."

end

