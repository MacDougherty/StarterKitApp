module StarterKit
  class UltrasonicRangeSensor < ApplicationRecord
    # The method(s) that correspond to device interfaces are: range port_number 
    
    belongs_to :starter_kit
    attr_accessor :skip_extract
    after_commit :extract, unless: :skip_extract
    after_commit :channel_push
    
   	validates :range, inclusion: { in: 0..10000,
   	message: "%{value} is not within the range 0..10000" }
		
		validates :port_number, inclusion: { in: %w(J5 J6 J7 J8 J9 J10 J11),
   	message: "%{value} is not a valid port_number" }
		
    
    def sync
      Apiotics.sync(self)
    end
    
    private
  
    def extract
      begin
        Apiotics::Extract.send(self)
      rescue => e
        puts e
      end
    end
    
    def channel_push
      if Apiotics.configuration.push == true
        interfaces = Hash.new
        puts self.previous_changes
        self.previous_changes.each do |k,v|
          if Apiotics::Extract.is_target(self, k)
            interfaces[k] = v[1].to_s
          end
        end
        interfaces.each do |k,v|
          ActionCable.server.broadcast "#{self.class.parent.to_s.underscore.downcase.gsub(" ", "_")}_channel",
            apiotics_instance: self.starter_kit.apiotics_instance,
            worker_name: self.class.parent.to_s.underscore.downcase.gsub(" ", "_"),
            model_name: self.class.name.demodulize.to_s.underscore.downcase.gsub(" ", "_"),
            interface: k,
            value: v
        end
      end
    end
  
  end
end