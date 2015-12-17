class Users::RegistrationsController < Devise::RegistrationsController
    
    def create 
       super do |resource|
           if params[:plan]
               resourc.plan_id = params[:plan]
               if resource.plan_id == 2
                   reosurce.save_with_payment
               else
                  resource.save 
               end
           end  
       end
    end
end