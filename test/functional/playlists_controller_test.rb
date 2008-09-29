require 'test_helper'

class PlaylistsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:playlists)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_playlist
    assert_difference('Playlist.count') do
      post :create, :playlist => { }
    end

    assert_redirected_to playlist_path(assigns(:playlist))
  end

  def test_should_show_playlist
    get :show, :id => playlists(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => playlists(:one).id
    assert_response :success
  end

  def test_should_update_playlist
    put :update, :id => playlists(:one).id, :playlist => { }
    assert_redirected_to playlist_path(assigns(:playlist))
  end

  def test_should_destroy_playlist
    assert_difference('Playlist.count', -1) do
      delete :destroy, :id => playlists(:one).id
    end

    assert_redirected_to playlists_path
  end
end
