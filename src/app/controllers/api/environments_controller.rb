#
#   Copyright 2012 Red Hat, Inc.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#

# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

module Api
  class EnvironmentsController < ApplicationController
    before_filter :require_user

    respond_to :xml
    layout :false

    def index
      @environments = PoolFamily.all
    end

    def show
      begin
        @environment = PoolFamily.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        @environment = PoolFamily.find_by_name(params[:id])
      end
    end
  end
end
