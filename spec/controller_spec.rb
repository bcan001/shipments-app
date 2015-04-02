require 'rails_helper'


RSpec.describe ShipmentsController, type: :controller do
	describe 'Shipments#create controller action' do
		# a shipment with no given attributes should be valid
		context 'when a new shipment is created' do
			it 'should be valid' do
				shipment = Shipment.create

				expect(shipment).to be_valid

			end
		end




	end
end





# RSpec.describe List, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
# RSpec.describe ListsHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

# RSpec.describe ListsController, type: :controller do
# end





# RSpec.describe ListingsController, type: :controller do

#   # This should return the minimal set of attributes required to create a valid
#   # Listing. As you add validations to Listing, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }

#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # ListingsController. Be sure to keep this updated too.
#   let(:valid_session) { {} }

#   describe "GET #index" do
#     it "assigns all listings as @listings" do
#       listing = Listing.create! valid_attributes
#       get :index, {}, valid_session
#       expect(assigns(:listings)).to eq([listing])
#     end
#   end

#   describe "GET #show" do
#     it "assigns the requested listing as @listing" do
#       listing = Listing.create! valid_attributes
#       get :show, {:id => listing.to_param}, valid_session
#       expect(assigns(:listing)).to eq(listing)
#     end
#   end

#   describe "GET #new" do
#     it "assigns a new listing as @listing" do
#       get :new, {}, valid_session
#       expect(assigns(:listing)).to be_a_new(Listing)
#     end
#   end

#   describe "GET #edit" do
#     it "assigns the requested listing as @listing" do
#       listing = Listing.create! valid_attributes
#       get :edit, {:id => listing.to_param}, valid_session
#       expect(assigns(:listing)).to eq(listing)
#     end
#   end

#   describe "POST #create" do
#     context "with valid params" do
#       it "creates a new Listing" do
#         expect {
#           post :create, {:listing => valid_attributes}, valid_session
#         }.to change(Listing, :count).by(1)
#       end

#       it "assigns a newly created listing as @listing" do
#         post :create, {:listing => valid_attributes}, valid_session
#         expect(assigns(:listing)).to be_a(Listing)
#         expect(assigns(:listing)).to be_persisted
#       end

#       it "redirects to the created listing" do
#         post :create, {:listing => valid_attributes}, valid_session
#         expect(response).to redirect_to(Listing.last)
#       end
#     end

#     context "with invalid params" do
#       it "assigns a newly created but unsaved listing as @listing" do
#         post :create, {:listing => invalid_attributes}, valid_session
#         expect(assigns(:listing)).to be_a_new(Listing)
#       end

#       it "re-renders the 'new' template" do
#         post :create, {:listing => invalid_attributes}, valid_session
#         expect(response).to render_template("new")
#       end
#     end
#   end

#   describe "PUT #update" do
#     context "with valid params" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested listing" do
#         listing = Listing.create! valid_attributes
#         put :update, {:id => listing.to_param, :listing => new_attributes}, valid_session
#         listing.reload
#         skip("Add assertions for updated state")
#       end

#       it "assigns the requested listing as @listing" do
#         listing = Listing.create! valid_attributes
#         put :update, {:id => listing.to_param, :listing => valid_attributes}, valid_session
#         expect(assigns(:listing)).to eq(listing)
#       end

#       it "redirects to the listing" do
#         listing = Listing.create! valid_attributes
#         put :update, {:id => listing.to_param, :listing => valid_attributes}, valid_session
#         expect(response).to redirect_to(listing)
#       end
#     end

#     context "with invalid params" do
#       it "assigns the listing as @listing" do
#         listing = Listing.create! valid_attributes
#         put :update, {:id => listing.to_param, :listing => invalid_attributes}, valid_session
#         expect(assigns(:listing)).to eq(listing)
#       end

#       it "re-renders the 'edit' template" do
#         listing = Listing.create! valid_attributes
#         put :update, {:id => listing.to_param, :listing => invalid_attributes}, valid_session
#         expect(response).to render_template("edit")
#       end
#     end
#   end

#   describe "DELETE #destroy" do
#     it "destroys the requested listing" do
#       listing = Listing.create! valid_attributes
#       expect {
#         delete :destroy, {:id => listing.to_param}, valid_session
#       }.to change(Listing, :count).by(-1)
#     end

#     it "redirects to the listings list" do
#       listing = Listing.create! valid_attributes
#       delete :destroy, {:id => listing.to_param}, valid_session
#       expect(response).to redirect_to(listings_url)
#     end
#   end

# end