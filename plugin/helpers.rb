module AresMUSH
  module Rpg
    def self.can_view_sheets?(enactor)
      return true if Global.read_config('rpg', 'public_sheets')
      enactor && enactor.has_permission?('rpg_admin')
    end
    
    def self.can_set_sheets?(enactor)
      enactor && enactor.has_permission?('rpg_admin')
    end
    
    def self.format_sheet_for_viewing(char)
      case Global.read_config('rpg', 'sheet_format')
      when 'text'
         Website.format_markdown_for_html(char.rpg_sheet)
       else
         char.rpg_sheet
       end
    end
    
    def self.format_sheet_for_editing(char)
      case Global.read_config('rpg', 'sheet_format')
      when 'text'
         Website.format_input_for_mush(char.rpg_sheet)
       else
         char.rpg_sheet
       end
    end
    
    def self.uninstall_plugin(client)
      begin 
        Character.all.each do |c|
          c.update(rpg_sheet: nil)
          c.update(rpg_sheet_notes: nil)
        end
        
         Manage.uninstall_plugin("rpg")
         client.emit_success "Plugin uninstalled."
      
       rescue Exception => e
         client.emit_failure "Error uninstalling plugin: #{e} backtrace=#{e.backtrace[0,10]}"
       end
    end
  end
end