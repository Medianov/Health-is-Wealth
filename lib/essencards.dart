import 'package:flutter/material.dart';





class essenabnahme1 extends StatelessWidget {
  essenabnahme1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Abnahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenabnahme1.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Vegetable Skewers of Olives, Tomatoes, and Monterey Jack Cheese',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Nonstick cooking spray ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('6 4- to 5-inch bamboo skewers soaked in water for 30 minutes',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('cherry tomatoes',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(' 0.5 pound Monterey jack cheese, cut into 1-inch cubes',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('6 large green marinated olives',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Olives and tomatoes are a metabolism-friendly combination, as you gain iron, protein, and other essential vitamins and minerals.'
                              ' Plus they are high in the fiber that helps your body process foods.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. Spray each skewer with nonstick spray. Arrange 1 tomato, 1 olive, and 1 cube of cheese on each skewer.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Grill on grill pan for 1 minute or less, just until cheese begins to melt. Turn and grill other side very briefly. Serve warm.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 232 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 19G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 2G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 14G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenabnahme2 extends StatelessWidget {
  essenabnahme2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Abnahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenabnahme2.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Chinese Chicken Salad PROTEIN',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('0.25 cup sugar ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('6 tablespoons rice vinegar ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Pinch sea salt and black pepper',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 cup plus 1 tablespoon peanut oil',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup sliced almonds ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup sesame seeds ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('6 green onions, chopped ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 head cabbage, grated or minced ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1.5 cups cooked chicken breast, chopped ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 package ramen noodles, broken ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Peanut oil is naturally lowin saturated fat and high in polyunsaturated and monounsaturated fats that help lower cholesterol levels. '
                              'Its high smoke point also makes it a good oil to cook with.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. In a small mixing bowl, combine sugar, vinegar, salt, pepper, and 0.5 cup peanut oil. '
                              'Whisk together and set aside. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Heat remaining tablespoon of oil on large skillet over medium heat. '
                              'Add almonds and sesame seeds.  until lightly browned, about 2 minutes. '
                              'Add the onions and cabbage.  for 5 minutes, or until tender. '
                              'Add the chicken, for 1 minute. Add the noodles and stir to combine. '
                              'Add vinegar mixture, tossing well to coat. Serve. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 535 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 40G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 23G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 21G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenabnahme3 extends StatelessWidget {
  essenabnahme3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Abnahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenabnahme3.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('BBQ Chicken Salad',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('4 cups chopped romaine lettuce ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 Roma tomatoes, seeded and diced ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 cucumber, peeled, seeded, and diced',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(' 1 red bell pepper, seeded and diced ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('0.25 cup shredded nonfat Cheddar cheese',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup garbanzo beans ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup fresh or frozen English peas ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup fresh or canned corn kernels',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('6 ounces chopped cooked boneless, skinless chicken breasts ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup barbeque sauce  ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('BBQ sauce can often be laden with sugar and preservatives. Try to look for all-natural '
                              'BBQ sauces that use natural sugars such as honey and natural fruit juice such as orange and lemon. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. In large mixing bowl, toss together lettuce, tomatoes, cucumber, bell pepper, cheese, garbanzo beans, peas, and corn.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text(' 2. Separately, in medium mixing bowl, toss together chicken and barbeque sauce. Add chicken mixture to lettuce mixture and toss to combine. Serve in two equal portions. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 198 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 3G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 17G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 26G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenabnahme4 extends StatelessWidget {
  essenabnahme4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Abnahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenabnahme4.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Hearts of Romaine with Balsamic Vinegar and Shallots',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('0.25 cup cooked chickpeas ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 cloves garlic, minced ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 shallot, minced ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 bunch fresh Italian flat-leaf parsley, chopped ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25  cup extra-virgin olive oil ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 cup balsamic vinegar Sea salt and black pepper to taste ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('6 cups coarsely chopped romaine hearts ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Extra-virgin olive oil is a flavorful oil used frequently in cooking and salad dressings. '
                              'It is high in monounsaturated fats that have been linked to a reduction in coronary heart disease. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. In a food processor, puree the chickpeas. Add the garlic, shallot, and parsley; pulse until well blended. While processing, drizzle in olive oil and vinegar. '
                              'Process until mixture thickens. Season to taste with salt and pepper',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. In mixing bowl, place greens and toss with chickpea puree. Toss well to coat and serve',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 101 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 11G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 5G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 1G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenabnahme5 extends StatelessWidget {
  essenabnahme5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Abnahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenabnahme5.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Orzo Salad with Red Bell Pepper and Fresh Herbs',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('0.25 cup extra-virgin olive oil',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 cups fresh basil leaves, finely chopped',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('cherry tomatoes',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 cup fresh Italian flat-leaf parsley, finely chopped',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('1 pound orzo pasta, cooked al dente and drained thoroughly',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 red bell pepper, seeded and diced',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 red onion, finely chopped.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Orzo is a healthy grain made from wheat semolina flour and is actually categorized as a pasta.'
                              ' Rich in fiber, this nontraditional pasta helps with digestion. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. In mixing bowl, whisk together oil, basil, parsley, garlic, and salt. Add the orzo, red pepper, and red onion. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Toss well to combine and serve. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 188 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 10G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 20G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 3G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenabnahme6 extends StatelessWidget {
  essenabnahme6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Abnahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenabnahme6.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Salad of Green Beans, Bacon, and Warm Gorgonzola Dressing ',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1 large head romaine lettuce, chopped',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 pound fresh green beans, trimmed, rinsed, and blanched',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('cherry tomatoes',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 slices bacon, cooked crisp and chopped',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 ounces Gorgonzola cheese, crumbled',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 tablespoons red wine vinegar',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 tablespoons honey',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Gorgonzola cheese is a good source of calcium, protein, and vitamin A and'
                              ' adds a distinct flavor to this recipe that your taste buds will love. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. Divide lettuce equally among 4 salad plates. Arrange beans on top. Sprinkle bacon over each. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. In separate small mixing bowl, whisk together Gorgonzola, vinegar, and honey. Mix well. '
                              'Transfer to small quart boiler and heat over low heat until cheese is melted,'
                              ' stirring occasionally. '
                              'If you are short on time, you can heat in microwave oven. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Pour cheese equally over prepared salads. Serve immediately. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 231 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 13G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 10G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 9G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}



class essenbeibehalten1 extends StatelessWidget {
  essenbeibehalten1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Beibehalten Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenbeibehalten1.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Oatmeal Buttermilk Pancakes ',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1 cup quick-cooking oats cup plain flour',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup sugar ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 teaspoon baking powder',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1/8 teaspoon baking soda teaspoon sea salt ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 cups low-fat buttermilk ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup egg beaters  ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Butter flavored nonstick spray.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Buttermilk is a super replacement for regular milk. '
                              'Its lower in fat than whole milk and high in potassium, vitamin B12, and calcium. '
                              'Plus, it adds a tremendous amount of flavor!  ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. Combine oats, flour, sugar, baking powder, baking soda, and salt in a medium mixing bowl and mix well. '
                              'Separately, whisk together buttermilk and egg beaters. '
                              'Pour buttermilk mixture into oat mixture and stir until just blended. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Spray hot griddle with butter flavored spray. '
                              'Pour 0.25 cup pancake batter onto griddle. Cook until bubbles appear and edges are brown. '
                              'Flip and cook until done, about 1-2 minutes. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 158 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 2G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 29G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 7G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenbeibehalten2 extends StatelessWidget {
  essenbeibehalten2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Beibehalten Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenbeibehalten2.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Grilled Chicken Breasts with Crisp Bacon and Gouda Cheese ',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('4 slices turkey bacon',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 boneless, skinless chicken breasts',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.25 cup raspberry jam ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('8 slices whole wheat bread ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('8 thin slices gouda cheese ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 1-ounce slices turkey ham ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 tablespoons butter, softened ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('The turkey bacon, chicken breast, and turkey ham make this recipe'
                              ' a great way to ensure you are getting a maximum lean protein boost that will.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. In medium skillet over medium heat, cook bacon until crisp. '
                              'Drain on paper towels and lightly wipe out skillet, leaving a little grease but not too much. '
                              'Add chicken and cook over medium heat until done, about 5 minutes on each side. '
                              'Remove chicken and set aside. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Spread jam on one side of each slice of bread. '
                              'Layer half the slices with cheese, then turkey ham. '
                              'Thinly slice the chicken breasts and place on top of ham. '
                              'Cover with remaining cheese slices, sprinkle with bacon, '
                              'and top sandwiches with remaining bread slices. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Spread outsides of sandwiches with a little softened butter. '
                              'Preheat griddle or grill pan over medium heat. Grill sandwiches about ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4 minutes per side (or use a Panini maker), turning once, '
                              'until bread is golden brown and cheese is melted. Serve immediately. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 373 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 19G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 27G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 22G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenbeibehalten3 extends StatelessWidget {
  essenbeibehalten3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Beibehalten Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenbeibehalten3.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Waffles with Fresh Fruit Cream',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('0.5 cup quick cooking oats',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 cup nonfat cottage cheese ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('3 egg whites',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(' 1 tablespoon Splenda ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 teaspoon cinnamon ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 teaspoon vanilla extract ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 banana, chopped ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 cup strawberries, chopped ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 tablespoons heavy cream ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Using egg whites keeps these waffles cholesterol free. For an even leaner breakfast, '
                              'substitute nonfat sour cream for the heavy cream. '
                              'This simple switch will give you more calcium and fewer calories and fat. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. Combine oats, cottage cheese, egg whites, Splenda, cinnamon, '
                              'and vanilla in a food processor or blender and blend until smooth. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Separately, combine chopped banana and strawberries with heavy cream. '
                              'Reserve for later. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Heat waffle maker. Pour about 0.25 cup batter onto heated waffle iron.'
                              ' Cook until done. When serving, top with fruit mixture. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 281 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 8G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 38G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 16G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenbeibehalten4 extends StatelessWidget {
  essenbeibehalten4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Beibehalten Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenbeibehalten4.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Caesar Salad with Grilled Steak',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('4 cups romaine lettuce, washed and dried',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 tablespoons nonfat Caesar salad dressing',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 ounces grilled lean steak such as sirloin',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 tablespoon reduced-fat grated Parmesan cheese.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Caesar salad dressing can often be high in fat due to the oil and the traditional use of raweggs.'
                              'Try several lowand nonfat versions to find the flavor you like best.'
                              'In large mixing bowl, toss together lettuce and dressing. Divide between two serving plates.'
                              'Top with steak and sprinkle with cheese.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 282 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 10G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 24G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 14G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenbeibehalten5 extends StatelessWidget {
  essenbeibehalten5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Beibehalten Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenbeibehalten5.jpg'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Cream Cheese French Toast',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Ingredients:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Butter-flavored nonstick cooking spray',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 slices French bread ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 teaspoons reduced-fat cream cheese ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 teaspoons of your favorite preserves, such as antioxidant-rich strawberry or raspberry ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1cup low-fat milk ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 cup skim milk divided into ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 servings ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 teaspoon vanilla extract ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 teaspoon cinnamon ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 teaspoon nutmeg ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(
                            height:10,
                          ),
                          Text('preparation:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('A lighter way to enjoy French toast, this calcium-rich food gives you energy '
                              'and keeps your bones strong. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('1. Prepare a skillet or grill pan by spraying lightly with nonstick spray. '
                              'Slice French bread into 1-inch-thick slices. Cut a pocket through the top of each slice, '
                              '0.75 the way through the bread. '
                              'Insert the cream cheese and preserves. ',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. In medium mixing bowl, combine milk, vanilla, cinnamon, and nutmeg. '
                              'Mix well to make batter. 3. Heat griddle or grill pan. '
                              'Dip prepared bread slices into milk mixture, coating both sides. '
                              'Place on heated griddle and cook until one side is lightly browned; '
                              'flip and cook other side. Enjoy.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),

                          Text('CALORIES: 319 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('FAT: 4G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('CARBOHYDRATES: 58G ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('PROTEIN: 11G',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),

                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}





class essenzunahme1 extends StatelessWidget {
  essenzunahme1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Zunahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenzunahme1.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Eiweissbrot-Sandwich mit Raeuchertofu, Avocado & Sprossen',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zutaten:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1 EL Sonnenblumenoel',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('8 Scheibe(n) Eiweissbrot herzhaft',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 Gurke',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 Tomate',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 Zitrone',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 Avocados',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Salz',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('Pfeffer',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('100 g Sprossen (z.B. Alfalfa-Sprossen)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 EL vegane Mayonnaise',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zubereitung:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1. Den Raeuchertofu in 0,5 cm dicke Streifen schneiden und in einer beschichteten Pfanne mit oel knusprig braun braten.'
                              ' Tofu beiseite legen und das Eiweissbrot in der Pfanne von beiden Seiten kurz anroesten.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Gurke und Tomate waschen, den Strunk der Tomate entfernen und beides in feine Scheiben schneiden. '
                              'Die Zitrone halbieren und den Saft auspressen. Die Avocados halbieren, den Kern entfernen und das Fruchtfleisch aus der Schale loesen.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Avocado und Zitronensaft mit einem Puerierstab zu einer feinen Creme puerieren und mit Salz und Pfeffer abschmecken.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Die Haelfte der Brotscheiben mit der Avocadocreme bestreichen und mit Raeuchertofu, Tomate, Gurke und Sprossen belegen. Die restlichen Brotscheiben duenn mit veganer Mayonnaise bestreichen und damit das Sandwich zuklappen. Sandwich diagonal halbieren.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('CALORIES: 416 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Fett: 25.5 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Kohlenhydrate: 24.1 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Eiweiss: 30.4 g',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),





                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenzunahme2 extends StatelessWidget {
  essenzunahme2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Zunahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenzunahme2.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Griechische Bauernpfanne',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zutaten:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('2 Portionen',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 Tomaten',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 Paprika',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 rote Zwiebel',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 EL oel',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 EL Tomatenmark',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Salz',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('Pfeffer',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Oregano',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('4 Eier',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 Packung(en) Feta',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('rustikales Weizenbrot',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zubereitung:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1. Tomaten und Paprika waschen. Zusammen mit der Zwiebel in kleine Wuerfel schneiden.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Pfanne erhitzen, oel zugeben und die Zwiebeln anduensten. '
                              'Paprika hinzugeben, einige Minuten schwenken. '
                              'Zuletzt Tomaten und das Tomatenmark zugeben. Mit Salz, Pfeffer und Oregano wuerzen. '
                              'Kurz umruehren und in eine Schuessel fuellen.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Feta in zwei Teile brechen, mit der Hand ueber der Pfanne zerbroeseln, einen Teil fein, '
                              'einen Teil grob. '
                              'Pfanne abdecken, Kaese anschmelzen lassen.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Noch etwas Oregano ueber die Eier streuen und in der Pfanne servieren. '
                              'Dazu passt ein Stueck rustikales Brot',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('CALORIES: 624 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Fett: 38 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Kohlenhydrate: 46 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Eiweiss: 27 g',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenzunahme3 extends StatelessWidget {
  essenzunahme3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Zunahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenzunahme3.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Klassisches Ruehrei',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zutaten:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('8 Eier',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 TL Salz',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('3 EL Milch',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 EL Butter',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 Zweig(e) Petersilie',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Zubereitung:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1. Eier, Salz und Milch in eine Schuessel geben und mit einem Schneebesen verquirlen.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Butter bei mittlerer Hitze in einer beschichteten Pfanne erhitzen. '
                              'Pfanne schwenken, so dass die Butter gleichmaessig in der Pfanne erhitzt ist',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Eiermasse erneut aufschlagen und in die Pfanne geben. Eier ca. '
                              '15 Sekunden stocken lassen und anschliessend verruehren bzw. die festen Anteile mit einem Pfannenwender verschieben.'
                              ' So lange fortfahren, bis die Eimasse nicht mehr fluessig ist und den gewuenschten Garpunkt erreicht hat. '
                              'Eventuell mit frischer Petersilie garnieren.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('CALORIES: 209 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Fett: 15.8 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Kohlenhydrate: 2.4 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Eiweiss: 14.6 g',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenzunahme4 extends StatelessWidget {
  essenzunahme4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Zunahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenzunahme4.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Herzhafte Hackfleisch-Tarte',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zutaten:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('2 Zwiebeln',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 Zehe(n) Knoblauch',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 EL Rapsoel',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('400 g Hackfleisch',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('0.5 TL Chilipulver',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 TL Curry',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('Salz',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('Pfeffer',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 EL Mango-Chutney',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('150 g Tomaten',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('500 g Suesskartoffeln',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('50 g Speckwuerfel',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('200 ml Sahne',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('frischer Quiche-Teig',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('50 g Erdnuesse (geroestet, gesalzen)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zubereitung:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1. Zwiebeln und Knoblauch schaelen und klein wuerfeln. '
                              'In einer Pfanne 1 EL Oel erhitzen und Zwiebeln und Knoblauch anschwitzen. '
                              'Hackfleisch hinzugeben, in der Pfanne zerkleinern und anbraten. '
                              'Mit Chili, Curry, Salz, Pfeffer, sowie Mango Chutney wuerzen.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Tomaten waschen, Strunk entfernen und in Wuerfel schneiden. '
                              'Zum Hack hinzugeben, ggf. etwas Wasser angiessen, und 10 Minuten koecheln lassen. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Suesskartoffel schaelen und in Scheiben schneiden. '
                              'In einer weiteren Pfanne einen Essloeffel Oel erhitzen und Speckwuerfel anbraten, '
                              'dann herausnehmen. In der gleichen Pfanne die Suesskartoffeln im restlichen Fett kurz anbraten.'
                              ' Die Sahne dazu giessen, die Pfanne abdecken und fuer 5 Minuten vorgaren. '
                              'Anschliessend die Suesskartoffeln durch ein Sieb abtropfen lassen und dabei den Sud in einer Schuessel auffangen. ',   style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Ofen auf 180 Grad Ober-/Unterhitze vorheizen. '
                              'Eine Tarteform fetten und mit dem fertigen Quiche-Teig auslegen, dabei einen Rand hochziehen. '
                              'Erst Hacksauce auf dem Teig, dann die Suesskartoffeln auf dem Hack verteilen. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('5. Erdnuesse hacken. Kochsud mit den Eiern verquirlen, eine Prise Salz, '
                              'sowie Pfeffer hinzugeben und ueber die Tarte-Fuellung giessen. '
                              'Zum Abschluss gehackte Erdnuesse und Speckwuerfel ueber der Fuellung verteilen. '
                              'Die Tarte auf dem Rost ca. 40 min im Ofen backen. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('CALORIES: 1167 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Fett: 80.3 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Kohlenhydrate: 70.3 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Eiweiss: 44.9 g',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),





                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}

class essenzunahme5 extends StatelessWidget {
  essenzunahme5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Zunahme Rezept',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Essen.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
            Column(

              children: [
                Ink.image(
                  image: AssetImage('assets/essenzunahme5.png'),
                  height: 160,


                  fit: BoxFit.cover,
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:8.0,end:8.0,top:8.0  ,bottom: 25.0),
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Text('Milchreis mit Karamell-Aepfeln',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('Zutaten:',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1 Vanilleschote',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 EL Butter',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('250 g Milchreis',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('1 L Vollmilch (3,8 % Fett)',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('7 EL brauner Zucker',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('50 g Walnusskerne',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('2 Aepfel',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('Zimt',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('Zubereitung:',

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,

                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Text('1. Mark der Vanilleschote auskratzen. 0,5 EL Butter in einem Topf erhitzen, Reis darin kurz anschwitzen. '
                              'Mit Milch aufgiessen, Vanillemark und 4 EL Zucker unterruehren und die Vanilleschote ebenfalls in die Milch geben. '
                              'Aufkochen lassen und unter gelegentlichem Ruehren ca. 30 Minuten koecheln lassen.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('2. Walnuesse hacken und in einer Pfanne ohne Fett roesten. Herausnehmen.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('3. Aepfel schaelen, vierteln, entkernen und in Spalten schneiden. '
                              '1,5 EL Butter in einer Pfanne erhitzen und die Aepfel darin anduensten. '
                              'Mit 3 EL Zucker bestreuen und karamellisieren lassen. Mit Zimt bestauuben.',

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('4. Fertigen Milchreis mit den Aepfeln in 4 Schalen anrichten. '
                              'Mit Walnuessen bestreuen und nach Belieben mit etwas Zimt bestaeuben.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),

                          Text('CALORIES: 623 ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Fett: 22.3 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Kohlenhydrate: 90.7 g ',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('Eiweiss: 15.3 g',


                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),




                        ]
                    ),
                  ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}




