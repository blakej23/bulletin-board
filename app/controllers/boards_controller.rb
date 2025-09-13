class BoardsController < ApplicationController

  def index

    render({ :template => "board_templates/index" })
  end

  def show
    render({ :template => "board_templates/show"})
  end

  def create
    @new_board = Board.new
    @new_board.name = params.fetch("name_param")
    @new_board.save

    
  render({ :template => "board_templates/create_confirm"})
  end


end
