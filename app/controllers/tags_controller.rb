class TagsController < ApplicationController
  def index
    @all_tags = Tag.all
  end
end
