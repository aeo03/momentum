class QuotationsController < ApplicationController
    def show
        @quotation = Quotation.find(params[:id])
    end

    def index
        @quotations = Quotation.all
    end

    def new
        @quotation = Quotation.new
    end

    def create
        @quotation = Quotation.new(params.require(:quotation).permit(:quote, :author))
        if @quotation.save
            flash[:notice] = "Quotation was added successfully"
            redirect_to @quotation
        else
            render "new"
        end
    end

    def edit
        @quotation = Quotation.find(params[:id])
    end
    
    def update
        @quotation = Quotation.find(params[:id])
        @quotation.update(params.require(:quotation).permit(:quote, :author))
        redirect_to @quotation
    end

    def destroy
        @quotation = Quotation.find(params[:id])
        @quotation.destroy
        redirect_to quotations_path
    end
end
