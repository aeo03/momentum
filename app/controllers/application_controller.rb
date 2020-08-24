class ApplicationController < ActionController::Base
    def homepage
        @rand_quote = Quotation.order(Arel.sql('RANDOM()')).first.quote
        @rand_author = Quotation.order(Arel.sql('RANDOM()')).first.author
    end
end
