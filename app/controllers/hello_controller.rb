class HelloController < ApplicationController
    layout 'hello'
    def index
        if request.post? then
            @title = 'Result'
            if params['r1'] then
                @msg = 'you selected: ' + params['r1']
            else
                @msg = 'not selected...'
            end
        else
            @title = 'Index'
            @msg = 'select radio button...'
        end
    end

    def other
        redirect_to action: :index, params: { 'msg': 'from other page'}
    end

    def message
        @header = 'layout sample'
        @footer = 'copyright SYODA-Tuyano 2020.'
        @title = 'New Layout'
        @msg = 'this is sample page!'
    end
end
