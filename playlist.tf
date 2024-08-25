resource "spotify_playlist" "Songs" {
  name = "SHIVAM'S  PLAYLIST"
  tracks = ["0OA00aPt3BV10qeMIs3meW"]
}

data "spotify_search_track" "Pritam" {
  artist = "Pritam"
}

resource "spotify_playlist" "My_Playlist" {
  name = "My_Playlist"
  tracks = [data.spotify_search_track.Pritam.tracks[0].id, data.spotify_search_track.Pritam.tracks[1].id, data.spotify_search_track.Pritam.tracks[2].id]
}