class User < ApplicationRecord
    
    def self.ransackable_attributes(auth_object = nil)
        %w[name email] # Add any other attributes you want to allow for searching
    end

    def self.ransackable_associations(auth_object = nil)
        []
    end
    
end
