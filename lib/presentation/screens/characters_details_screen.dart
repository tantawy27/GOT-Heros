import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/cubit/characters_cubit.dart';
import '../../constants/my_colors.dart';
import '../../data/models/characters.dart';
import '../../data/models/quote.dart';

class CharactersDetailsScreen extends StatelessWidget {
  final Character character;

  const CharactersDetailsScreen({super.key, required this.character});

  Widget buildSliverAppBar() {
    //ويدجيت بتتحكم فالصورة والتاييتل
    return SliverAppBar(
      expandedHeight: 550,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.fullName,
          style: TextStyle(color: MyColors.myWhite),
        ),
        background: Hero(
          tag: character.id,
          child: Image.network(character.imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget characterInfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }

  Widget checkIfQuoteLoaded(CharactersState state){
    if(state is Quoteloaded){
      return showQuote(state);
    }else{
      return showProgressIndicator();

    }
  }

  Widget showQuote(state){
    var quote = (state).quote;
    return Center(
      child: DefaultTextStyle(
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: MyColors.myWhite,
          shadows: [
            Shadow(
              blurRadius: 7,
              color: MyColors.myYellow
              ,offset: Offset(0, 0),

            )
          ]
        ),
       child:AnimatedTextKit(
        repeatForever: true,
        animatedTexts:[
           TyperAnimatedText(quote.quote)
        ]
        
    )
      )
    );
      

    

  }

  Widget  showProgressIndicator(){
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.yellow,
      )
    );

  }

  @override
  
  Widget build(BuildContext context) {

    BlocProvider.of<CharactersCubit>(context).getQuotes();
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    characterInfo('First Name : ', character.firstName),
                    buildDivider(266),
                    characterInfo('Last Name : ', character.lastName),
                    buildDivider(266),
                    characterInfo('Full Name : ', character.fullName),
                    buildDivider(266),
                    characterInfo('Family : ', character.family),
                    buildDivider(300),
                    characterInfo('Title : ', character.title),
                    buildDivider(320),
                    SizedBox(height: 20),
                    BlocBuilder<CharactersCubit, CharactersState>(
                      builder: (context, state) {
                        return checkIfQuoteLoaded(state);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 400),
            ]),
          ),
        ],
      ),
    );
  }
}
