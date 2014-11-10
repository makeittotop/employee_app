class Employee < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hire, presence: true
    validates :code, presence: true, uniqueness: true
    validates :personal_email, presence: true, uniqueness: true
    validates :contact_number, presence: true, uniqueness: true
    validates :gender, presence: true

    mount_uploader :avatar, AvatarUploader

    protected
    
    def self.authenticate login, password
        ldap = Net::LDAP.new
        ldap.host = "172.16.10.10"
        ldap.port = 389
        ldap.base = "OU=barajounusers,DC=barajoun,DC=local"
        ldap.auth "#{login}@barajoun.local", password

        if ldap.bind
            puts "###ldap auth successful###"
            Employee.where({first_name: login}).first
        end
    end
end
