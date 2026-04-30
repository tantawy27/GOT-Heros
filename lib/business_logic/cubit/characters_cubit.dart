import 'package:bloc/bloc.dart';
import '../../data/models/characters.dart';
import '../../data/models/quote.dart';
import '../../data/repository/characters_repo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepositry;
  List<Character> characters = [];

  CharactersCubit(this.charactersRepositry) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepositry.getAllCharacters().then((characters) {
      emit(Charactersloaded(characters));
      this.characters = characters;
    });

    return (characters);
  }

  void getQuotes() {
    charactersRepositry.getRandomQuote().then((quote) {
      emit(Quoteloaded(quote));
    });
  }
}
