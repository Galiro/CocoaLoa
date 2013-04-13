require 'pony'

class Email
    
    @queue = :app
    
    include Pony
    
    def self.perform(to, message)
    
        Pony.mail({
          :to => to.downcase,
          :via => :smtp,
          :body => message.to_s,
          :via_options => {
            :address              => 'smtp.gmail.com',
            :port                 => '587',
            :enable_starttls_auto => true,
            :user_name            => 'eldurotaduro@gmail.com',
            :password             => '**gglove**',
            :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
            :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
          }
        })
        
        puts "Email Sent"
    end
    
end

class Text
    
    @queue = :app
    
    def self.perform(to, from, message)
        
        puts "Text has been sent @" + Time.now 

    end
end

class Tweet
    
    @queue = :app
    
    def self.perform
        
    end
end