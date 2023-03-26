class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_paramas)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
   end
  
   private

   def room_paramas
    params.require(:room).permit(:name, user_ids: [])
   end
end
