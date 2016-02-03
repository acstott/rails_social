class GroupsController < ApplicationController

def index
    @groups = get_groups
 end

end
