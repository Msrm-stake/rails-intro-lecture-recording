class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    search = params[:member]
      if search
        @members = @members.select do |member|
          member.start_with? search.downcase
        end
      end
  end

end

  
