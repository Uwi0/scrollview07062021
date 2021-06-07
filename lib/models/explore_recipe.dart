part 'ingredient.dart';
part 'instruction.dart';

class RecipeCardType{
  static const String card1 = 'card1';
  static const String card2 = 'card2';
  static const String card3 = 'card3';
}

class ExploreRecipe{
  String? cardType;
  String? title;
  String? subTitle;
  String? backgroundImage;
  String? backgroundImageSource;
  String? message;
  String? authorName;
  String? role;
  String? profileImage;
  int? durationInMinutes;
  String? dietType;
  int? calories;
  List<String>? tags;
  String? description;
  String? source;
  List<Ingredients>? ingredients;
  List<Instruction>? instruction;

  ExploreRecipe({
    this.cardType,
    this.title,
    this.subTitle,
    this.backgroundImage,
    this.backgroundImageSource,
    this.message,
    this.authorName,
    this.role,
    this.profileImage,
    this.durationInMinutes,
    this.dietType,
    this.tags,
    this.description,
    this.source,
    this.ingredients,
    this.instruction
});

  ExploreRecipe.fromJson(Map<String, dynamic> json){
    cardType = json['cardType'] ?? '';
    title = json['title'] ?? '';
    subTitle = json['subtitle'] ?? '';
    backgroundImage = json['backgroundImage'] ?? '';
    backgroundImageSource = json['back'] ?? '';
    message = json['message'] ?? '';
    authorName = json['authorName'] ?? '';
    role = json['role'] ?? '';
    profileImage = json['profileImage'] ?? '';
    durationInMinutes = json['durationInMinutes'] ?? 0;
    dietType = json['dietType'] ?? '';
    tags = json['tags'] ?? '';
    description = json['description'] ?? '';
    source = json['source'] ?? '';
    if(json['ingredients'] != null){
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((i){
        ingredients!.add(Ingredients.fromJson(i));
      });
    }
    if(json['instructions'] != null){
      instruction = <Instruction>[];
      json['instructions'].forEach((i){
        instruction!.add(Instruction.fromJson(i));
      });
    }
  }
}