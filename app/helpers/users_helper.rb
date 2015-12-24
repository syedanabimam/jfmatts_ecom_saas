module UsersHelper
    #'Retailer', 'Entrepreneur', 'Developer', 'Other'
    def job_title_icon
       if @user.profile.job_title  == "Developer"
           "<i class='fa fa-code'></i>".html_safe
       elsif @user.profile.job_title  == "Entrepreneur"
           "<i class='fa fa-lightbulb-o'></i>".html_safe     
       elsif @user.profile.job_title  == "Retailer"
           "<i class='fa fa-shopping-cart'></i>".html_safe 
       elsif @user.profile.job_title  == "Other"
           "<i class='fa fa-life-ring'></i>".html_safe            
       end   
    end
end