resource "spotify_playlist" "classical_music" {
  name = "Ludwig van Beethoven"
  tracks = ["1x27TAmWCNzMTJeqlA5bYz"]
}

data "spotify_search_track" "Beethoven" {
  artist = "Beethoven"
}

resource "spotify_playlist" "Beethoven" {
  name = "Beethoven"
  tracks = [data.spotify_search_track.Beethoven.tracks[0].id,
  data.spotify_search_track.Beethoven.tracks[1].id,
  data.spotify_search_track.Beethoven.tracks[2].id,
  data.spotify_search_track.Beethoven.tracks[3].id]
}