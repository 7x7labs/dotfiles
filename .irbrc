def set_tenant(id)
  Tenant.set_current_tenant Tenant.find(id)
end

unless Gem::Specification::find_all_by_name("acts_as_tenant").empty?
  set_tenant(1)
end

begin

  alias e exit

  require 'rubygems'
  require 'irb/completion'

  ANSI = {}
  ANSI[:RESET]     = "\e[0m"
  ANSI[:BOLD]      = "\e[1m"
  ANSI[:UNDERLINE] = "\e[4m"
  ANSI[:LGRAY]     = "\e[0;37m"
  ANSI[:GRAY]      = "\e[1;30m"
  ANSI[:RED]       = "\e[31m"
  ANSI[:GREEN]     = "\e[32m"
  ANSI[:YELLOW]    = "\e[33m"
  ANSI[:BLUE]      = "\e[34m"
  ANSI[:MAGENTA]   = "\e[35m"
  ANSI[:CYAN]      = "\e[36m"
  ANSI[:WHITE]     = "\e[37m"

  # Build a simple colorful IRB prompt
  IRB.conf[:PROMPT][:SIMPLE_COLOR] = {
    :PROMPT_I => "#{ANSI[:BLUE]}>>#{ANSI[:RESET]} ",
    :PROMPT_N => "#{ANSI[:BLUE]}>>#{ANSI[:RESET]} ",
    :PROMPT_C => "#{ANSI[:RED]}?>#{ANSI[:RESET]} ",
    :PROMPT_S => "#{ANSI[:MAGENTA]}?>#{ANSI[:RESET]} ",
    :RETURN   => "#{ANSI[:GREEN]}=>#{ANSI[:RESET]} %s\n",
    :AUTO_INDENT => true }

  IRB.conf[:AUTO_INDENT] = true
  IRB.conf[:PROMPT_MODE] = :SIMPLE_COLOR
  IRB.conf[:SAVE_HISTORY] = 100

  unless Gem::Specification::find_all_by_name("amazing_print").empty?
    require "amazing_print"
    AmazingPrint.irb!
  end

  unless Gem::Specification::find_all_by_name("hirb").empty?
    require "hirb"
    table_formatter = {:class => :auto_table, :ancestor => true, :options => {:unicode => true}}
    Hirb.enable :pager => false, :output => {"ActiveRecord::Base" => table_formatter}
  end

rescue Exception => e
  puts "Exception in .irbrc: #{e}"
end
