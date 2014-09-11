require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe LegislationsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Legislation. As you add validations to Legislation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LegislationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all legislations as @legislations" do
      legislation = Legislation.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:legislations)).to eq([legislation])
    end
  end

  describe "GET show" do
    it "assigns the requested legislation as @legislation" do
      legislation = Legislation.create! valid_attributes
      get :show, {:id => legislation.to_param}, valid_session
      expect(assigns(:legislation)).to eq(legislation)
    end
  end

  describe "GET new" do
    it "assigns a new legislation as @legislation" do
      get :new, {}, valid_session
      expect(assigns(:legislation)).to be_a_new(Legislation)
    end
  end

  describe "GET edit" do
    it "assigns the requested legislation as @legislation" do
      legislation = Legislation.create! valid_attributes
      get :edit, {:id => legislation.to_param}, valid_session
      expect(assigns(:legislation)).to eq(legislation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Legislation" do
        expect {
          post :create, {:legislation => valid_attributes}, valid_session
        }.to change(Legislation, :count).by(1)
      end

      it "assigns a newly created legislation as @legislation" do
        post :create, {:legislation => valid_attributes}, valid_session
        expect(assigns(:legislation)).to be_a(Legislation)
        expect(assigns(:legislation)).to be_persisted
      end

      it "redirects to the created legislation" do
        post :create, {:legislation => valid_attributes}, valid_session
        expect(response).to redirect_to(Legislation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved legislation as @legislation" do
        post :create, {:legislation => invalid_attributes}, valid_session
        expect(assigns(:legislation)).to be_a_new(Legislation)
      end

      it "re-renders the 'new' template" do
        post :create, {:legislation => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested legislation" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => new_attributes}, valid_session
        legislation.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested legislation as @legislation" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => valid_attributes}, valid_session
        expect(assigns(:legislation)).to eq(legislation)
      end

      it "redirects to the legislation" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => valid_attributes}, valid_session
        expect(response).to redirect_to(legislation)
      end
    end

    describe "with invalid params" do
      it "assigns the legislation as @legislation" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => invalid_attributes}, valid_session
        expect(assigns(:legislation)).to eq(legislation)
      end

      it "re-renders the 'edit' template" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested legislation" do
      legislation = Legislation.create! valid_attributes
      expect {
        delete :destroy, {:id => legislation.to_param}, valid_session
      }.to change(Legislation, :count).by(-1)
    end

    it "redirects to the legislations list" do
      legislation = Legislation.create! valid_attributes
      delete :destroy, {:id => legislation.to_param}, valid_session
      expect(response).to redirect_to(legislations_url)
    end
  end

end
