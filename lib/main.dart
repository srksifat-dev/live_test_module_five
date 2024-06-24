

void main() {
  Media media = Media();
  media.play();

  Song song = Song(artist: "Habib Wahid");
  song.play();

  song.artist = "James";
  song.play();
}

class Media{
  void play(){
    print("Playing media...");
  }
}

class Song extends Media{
  /* If we want to allow to set the artist name in the implementation
  even once instantiated*/
  String artist;

  // If we don't want to allow to set the artist name once instantiated

  // final String artist;

  Song({required this.artist});

  @override
  void play() {
    print("Playing song by $artist...");
  }
}

