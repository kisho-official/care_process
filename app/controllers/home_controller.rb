class HomeController < ApplicationController
  def index
    
  end

  def doc_download
    file = File.open("#{Rails.root}/public/bgc.pdf", 'r')
    send_file file,
    :filename => "bgc.pdf",
    :type => "application/pdf"
  end

  def bgc_download
    path = "public/bgc"
    @files = Dir.glob("public/bgc/*")
    
    #@files = Dir.glob(path + '/*')
  end
end
