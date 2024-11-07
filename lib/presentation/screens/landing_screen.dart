import 'package:catbreeds/presentation/bloc/cat_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cat_card.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

 TextEditingController searchController = TextEditingController();
CatDataBloc _catDataBloc = CatDataBloc();

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
   _catDataBloc.add(GetListCatData());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CatDataBloc>(
            create: ((context) => _catDataBloc),
          ),
        ],
        child:  BlocBuilder<CatDataBloc, CatDataState>(

          builder: (context, state) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
         children: [
           Padding(
             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.080,left: 20,right: 20),
             child: TextField(
               controller: searchController,
               onChanged: (query) {
                 _catDataBloc.add(SearchCats(query));
               },
               decoration: InputDecoration(
                 hintText: 'Buscar gato por raza...',
                 hintStyle: const TextStyle(
                   color: Colors.grey,
                   fontFamily: 'Stars'
                 ),
                 prefixIcon: const Icon(Icons.search),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                 ),
               ),
             ),
           ),
           const SizedBox(
             height: 20,
           ),

           Expanded(
             child: ListView.builder(
               itemCount: state.filteredCatData?.length ?? 0,
               itemBuilder: (context, index) {
                 return Padding(
                   padding: const EdgeInsets.only(left: 40 , right: 40),
                   child: Column(
                     children: [
                       CatCard(catData: state.filteredCatData?[index]),
                       const SizedBox(
                         height: 10,
                       )
                     ],
                   ),
                 );
               },
             ),
           ),
         ],
      ),
    );
  },
  )

  );
  }
}
