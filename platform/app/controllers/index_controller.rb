class IndexController < ApplicationController
    def home
        @services = Service.all
    end
end
