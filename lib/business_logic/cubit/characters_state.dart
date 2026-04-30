part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

class CharactersInitial extends CharactersState {}


class Charactersloaded extends CharactersState{
  final List<Character> characters;

  Charactersloaded(this.characters);
}




class Quoteloaded extends CharactersState{
  final Quote quote;

  Quoteloaded(this.quote);
}



