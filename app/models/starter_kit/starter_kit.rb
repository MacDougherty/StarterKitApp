module StarterKit
  class StarterKit < ApplicationRecord
    
      
        
          has_one :buzzer, dependent: :destroy
          accepts_nested_attributes_for :buzzer
        
          has_one :four_digit_display, dependent: :destroy
          accepts_nested_attributes_for :four_digit_display
        
          has_one :potentiometer, dependent: :destroy
          accepts_nested_attributes_for :potentiometer
        
          has_one :ultrasonic_range_sensor, dependent: :destroy
          accepts_nested_attributes_for :ultrasonic_range_sensor
        
          has_one :light_sensor, dependent: :destroy
          accepts_nested_attributes_for :light_sensor
        
      
    
  end
end