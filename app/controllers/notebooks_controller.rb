class NotebooksController < ApplicationController
  before_action :set_notebook, only: [:show, :update, :destroy]

  # GET /notebooks
  # GET /notebooks.json
  def index
    @notebooks = Notebook.all

    render json: @notebooks
  end

  # GET /notebooks/1
  # GET /notebooks/1.json
  def show
    render json: @notebook
  end

  # POST /notebooks
  # POST /notebooks.json
  def create
    @notebook = Notebook.new(notebook_params)

    if @notebook.save
      render json: @notebook, status: :created, location: @notebook
    else
      render json: @notebook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notebooks/1
  # PATCH/PUT /notebooks/1.json
  def update
    @notebook = Notebook.find(params[:id])

    if @notebook.update(notebook_params)
      head :no_content
    else
      render json: @notebook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notebooks/1
  # DELETE /notebooks/1.json
  def destroy
    @notebook.destroy

    head :no_content
  end

  private

    def set_notebook
      @notebook = Notebook.find(params[:id])
    end

    def notebook_params
      params[:notebook]
    end
end
