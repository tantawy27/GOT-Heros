import '../models/characters.dart';
import '../models/quote.dart';
import '../web_services/characters_web_services.dart';
import '../web_services/quotes_web_services.dart';

class CharactersRepo {

 final CharactersWebServices charactersWebServices;
 final QuotesWebServices  quotesWebServices;

  CharactersRepo(this.charactersWebServices,this.quotesWebServices);


  Future<List<Character>> getAllCharacters() async{
    final characters =await charactersWebServices.getAllCharacters();
    return characters.map((character)=>Character.fromJson(character)).toList();
  }


    Future<Quote> getRandomQuote() async{
    final quote =await quotesWebServices.getRandomQuote();
    return Quote.fromJson(quote);
  }



}