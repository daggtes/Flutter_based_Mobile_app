import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utilis/colors.dart';
import 'package:untitled/widgets/app_icon.dart';
import 'package:untitled/widgets/big_text.dart';
import 'package:untitled/widgets/expandable_text_widget.dart';

import '../../utilis/dimensions.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: BigText(size: Dimensions.font16, text: "Ethiopian Kitfo Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),
              )
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/food2.png",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Spices – commonly used spices are: garlic, ginger, turmeric, fenugreek, black pepper corns, korerima, beso bela, nutmeg, cinnamon, ajwain (carom), cloves, dried chilli, paprika, Berbere spice mix – literally meaning ‘hot’ in Amharic (the Ethiopian national language) this blend of spices is used in everything. It is made with variations of fenugreek, coriander, cardamom, cumin, chillies, allspice, cloves, pepper, paprika, ginger, garlic, turmeric, nutmeg, cinnamon, mustard seed, black cumin, carom, rue seeds, ethiopian basil (besobela), salt. Wine can be added to make it into a delicious marinade. Shiro is chickpea flour, also known as besan or garbanzo flour. Mitmita is a spicier (hot!) spice mix commonly used particularly with beef dishes. It’s main ingredient (by  far) is chilies, and then cardamom, cloves salt, all toasted and ground into a powder. Mekelesha is a blend of seven spices that is sprinkled on wots at the end of cooking, much like garam masala, to give a lovely aroma. The seven spices are:  cardamom, cinnamon, black pepper, nuteg, cumin, indian long pepper (called timin in Amharic), cloves.Korerima is often referred to as cardamom in recipes but is actually different, it is much larger and should be used if possible.Spices – commonly used spices are: garlic, ginger, turmeric, fenugreek, black pepper corns, korerima, beso bela, nutmeg, cinnamon, ajwain (carom), cloves, dried chilli, paprika, Berbere spice mix – literally meaning ‘hot’ in Amharic (the Ethiopian national language) this blend of spices is used in everything. It is made with variations of fenugreek, coriander, cardamom, cumin, chillies, allspice, cloves, pepper, paprika, ginger, garlic, turmeric, nutmeg, cinnamon, mustard seed, black cumin, carom, rue seeds, ethiopian basil (besobela), salt. Wine can be added to make it into a delicious marinade. Shiro is chickpea flour, also known as besan or garbanzo flour. Mitmita is a spicier (hot!) spice mix commonly used particularly with beef dishes. It’s main ingredient (by  far) is chilies, and then cardamom, cloves salt, all toasted and ground into a powder. Mekelesha is a blend of seven spices that is sprinkled on wots at the end of cooking, much like garam masala, to give a lovely aroma. The seven spices are:  cardamom, cinnamon, black pepper, nuteg, cumin, indian long pepper (called timin in Amharic), cloves.Korerima is often referred to as cardamom in recipes but is actually different, it is much larger and should be used if Spices – commonly used spices are: garlic, ginger, turmeric, fenugreek, black pepper corns, korerima, beso bela, nutmeg, cinnamon, ajwain (carom), cloves, dried chilli, paprika, Berbere spice mix – literally meaning ‘hot’ in Amharic (the Ethiopian national language) this blend of spices is used in everything. It is made with variations of fenugreek, coriander, cardamom, cumin, chillies, allspice, cloves, pepper, paprika, ginger, garlic, turmeric, nutmeg, cinnamon, mustard seed, black cumin, carom, rue seeds, ethiopian basil (besobela), salt. Wine can be added to make it into a delicious marinade. Shiro is chickpea flour, also known as besan or garbanzo flour. Mitmita is a spicier (hot!) spice mix commonly used particularly with beef dishes. It’s main ingredient (by  far) is chilies, and then cardamom, cloves salt, all toasted and ground into a powder. Mekelesha is a blend of seven spices that is sprinkled on wots at the end of cooking, much like garam masala, to give a lovely aroma. The seven spices are:  cardamom, cinnamon, black pepper, nuteg, cumin, indian long pepper (called timin in Amharic), cloves.Korerima is often referred to as cardamom in recipes but is actually different, it is much larger and should be used if possible. possible.",),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "12.88 Birr " + " x " + " 0 ", color: AppColors.mainBlackColor,size: Dimensions.font16,),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),

            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20*2),
                    topLeft: Radius.circular(Dimensions.radius20*2)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child:  Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  child: BigText(text: "75 birr | Add to chart", color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
