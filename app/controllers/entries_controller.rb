class EntriesController < ApplicationController
  def index
    
  end
  def search
    @user = User.find_by_emp_id(params[:emp_id])
    if @user
      @user
      @details = EntryDetail.find_by_emp_id(params[:emp_id])
    else
      respond_to do |format|
        format.html { redirect_to :controller=>"users", :action=> "new", :notice =>'User was successfully updated.' }
      end
    end
  end

  def edit    
    @details = EntryDetail.find(params[:id])
  end

  def update
   @details = EntryDetail.find_by_emp_id(params[:emp_id])
   if @details
     @user = User.find_by_emp_id(params[:emp_id])
     @details.update_attributes!(:tower=>params[:tower], :location=>params[:location],
       :odc_location=>params[:odc_location],
    :nda=>params[:nda], :security_session=>params[:security_session],
   :physical_access=>params[:physical_access], :logical_access=>params[:logical_access],
   :mmo_bgc=>params[:mmo_bgc],
   :mailing_group=>params[:mailing_group], :mmo_id=> params[:mmo_id], :laptop=>params[:laptop],
   :application_access=>params[:application_access], :smart_card=>params[:smart_card], :elearning=>params[:elearning])
   if params[:tcs_bgc]

    @details.update_attributes!(:tcs_bgc=>"Submitted")
    name = params[:tcs_bgc].original_filename
    directory = "public/bgc"
    path = File.join(directory, name)
    File.open(path, "wb") { |f| f.write(params[:tcs_bgc].read) }


   end
 
   else
     render "update"
   end   
  end

end
