class NearbiesController < ApplicationController

  # GET /nearbies
  # GET /nearbies.json

    #search for user name
  def getUserName(id)
    if id != nil
      @user = User.find(id)
    end
    return @user.name
  end
  helper_method :getUserName

  def index

    @pickups = Pickup.order(:name)

    #show different template for different pickup
    @hash = Gmaps4rails.build_markers(@pickups) do |pickup, marker|
      if (pickup.pickedup == false)
        marker.lat pickup.lat
        marker.lng pickup.lng
        marker.title pickup.name
        marker.infowindow '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h1 id="firstHeading" class="firstHeading">' + pickup.name + '</h1>'+
        '<div id="bodyContent">'+
        '<img src="' + pickup.avatar.url + '" class="pickup-img">' +
        '<h3> $' + pickup.price.to_s + '</h3>' +
        '<h3> Seller: ' + getUserName(pickup.user_id) + '</h3>' +
        '<p>' + pickup.description + '</p>' +
        '<p> <a class="btn btn-primary" href="/pickups/' + pickup.id.to_s + '"> PICK IT UP! </a>' +
        '<a class="btn btn-primary" href="/pickups/' + pickup.id.to_s + '"> MORE INFO </a> </p>' +
        '</div>'+
        '</div>';
      elsif (pickup.pickedup == true)
        marker.lat pickup.lat
        marker.lng pickup.lng
        marker.title pickup.name
        marker.infowindow '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h1 id="firstHeading" class="firstHeading">' + pickup.name + '</h1>'+
        '<div id="bodyContent">'+
        '<img src="' + pickup.avatar.url + '" class="pickup-img">' +
        '<h3> $' + pickup.price.to_s + '</h3>' +
        '<h3> Seller: ' + getUserName(pickup.user_id) + '</h3>' +
        '<p>' + pickup.description + '</p>' +
        '<p> <a class="btn btn-default disabled"> Picked </a>' +
        '<a class="btn btn-primary" href="/pickups/' + pickup.id.to_s + '"> MORE INFO </a> </p>' +
        '</div>'+
        '</div>';
      end

    end

  end

end
