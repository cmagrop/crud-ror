class MesasController < ApplicationController
    
    def index
        @mesas = Mesa.all
    end

   
    def new
    @mesa = Mesa.new
    end
   
    def edit
    @mesa = Mesa.find(params[:id])
    end 

    def create
        #@mesa = Mesa.new(params[:mesa])

        @mesa = Mesa.new(params.require(:mesa).permit(:modelo, :marca, :caract, :dim, :patas))
        if @mesa.save
        redirect_to @mesa
        else
        render 'new'
        end
    end

    def show
        @mesa = Mesa.find(params[:id])
      end

    def update
        @mesa = Mesa.find(params[:id])
       
        if @mesa.update(mesa_params)
          redirect_to @mesa
        else
          render 'edit'
        end
      end

      def destroy
        @mesa = Mesa.find(params[:id])
        @mesa.destroy
     
        redirect_to mesas_path
      end
       
      private
        def mesa_params
          params.require(:mesa).permit(:modelo, :marca, :caract, :dim, :patas)
        end

   
    


end
