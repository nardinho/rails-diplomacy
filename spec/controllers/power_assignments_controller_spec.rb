require 'spec_helper'

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

describe PowerAssignmentsController do

  # This should return the minimal set of attributes required to create a valid
  # PowerAssignment. As you add validations to PowerAssignment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PowerAssignmentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all power_assignments as @power_assignments" do
      power_assignment = PowerAssignment.create! valid_attributes
      get :index, {}, valid_session
      assigns(:power_assignments).should eq([power_assignment])
    end
  end

  describe "GET show" do
    it "assigns the requested power_assignment as @power_assignment" do
      power_assignment = PowerAssignment.create! valid_attributes
      get :show, {:id => power_assignment.to_param}, valid_session
      assigns(:power_assignment).should eq(power_assignment)
    end
  end

  describe "GET new" do
    it "assigns a new power_assignment as @power_assignment" do
      get :new, {}, valid_session
      assigns(:power_assignment).should be_a_new(PowerAssignment)
    end
  end

  describe "GET edit" do
    it "assigns the requested power_assignment as @power_assignment" do
      power_assignment = PowerAssignment.create! valid_attributes
      get :edit, {:id => power_assignment.to_param}, valid_session
      assigns(:power_assignment).should eq(power_assignment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PowerAssignment" do
        expect {
          post :create, {:power_assignment => valid_attributes}, valid_session
        }.to change(PowerAssignment, :count).by(1)
      end

      it "assigns a newly created power_assignment as @power_assignment" do
        post :create, {:power_assignment => valid_attributes}, valid_session
        assigns(:power_assignment).should be_a(PowerAssignment)
        assigns(:power_assignment).should be_persisted
      end

      it "redirects to the created power_assignment" do
        post :create, {:power_assignment => valid_attributes}, valid_session
        response.should redirect_to(PowerAssignment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved power_assignment as @power_assignment" do
        # Trigger the behavior that occurs when invalid params are submitted
        PowerAssignment.any_instance.stub(:save).and_return(false)
        post :create, {:power_assignment => {  }}, valid_session
        assigns(:power_assignment).should be_a_new(PowerAssignment)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PowerAssignment.any_instance.stub(:save).and_return(false)
        post :create, {:power_assignment => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested power_assignment" do
        power_assignment = PowerAssignment.create! valid_attributes
        # Assuming there are no other power_assignments in the database, this
        # specifies that the PowerAssignment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PowerAssignment.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => power_assignment.to_param, :power_assignment => { "these" => "params" }}, valid_session
      end

      it "assigns the requested power_assignment as @power_assignment" do
        power_assignment = PowerAssignment.create! valid_attributes
        put :update, {:id => power_assignment.to_param, :power_assignment => valid_attributes}, valid_session
        assigns(:power_assignment).should eq(power_assignment)
      end

      it "redirects to the power_assignment" do
        power_assignment = PowerAssignment.create! valid_attributes
        put :update, {:id => power_assignment.to_param, :power_assignment => valid_attributes}, valid_session
        response.should redirect_to(power_assignment)
      end
    end

    describe "with invalid params" do
      it "assigns the power_assignment as @power_assignment" do
        power_assignment = PowerAssignment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PowerAssignment.any_instance.stub(:save).and_return(false)
        put :update, {:id => power_assignment.to_param, :power_assignment => {  }}, valid_session
        assigns(:power_assignment).should eq(power_assignment)
      end

      it "re-renders the 'edit' template" do
        power_assignment = PowerAssignment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PowerAssignment.any_instance.stub(:save).and_return(false)
        put :update, {:id => power_assignment.to_param, :power_assignment => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested power_assignment" do
      power_assignment = PowerAssignment.create! valid_attributes
      expect {
        delete :destroy, {:id => power_assignment.to_param}, valid_session
      }.to change(PowerAssignment, :count).by(-1)
    end

    it "redirects to the power_assignments list" do
      power_assignment = PowerAssignment.create! valid_attributes
      delete :destroy, {:id => power_assignment.to_param}, valid_session
      response.should redirect_to(power_assignments_url)
    end
  end

end