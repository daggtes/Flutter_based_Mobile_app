import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utilis/dimensions.dart';
import 'package:untitled/widgets/app_column.dart';
import 'package:untitled/widgets/app_icon.dart';
import 'package:untitled/widgets/expandable_text_widget.dart';

import '../../utilis/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food1.png"
                  )
                )
              ),
            ),
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
               padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Ethiopian Pantry"),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Spices – commonly used spices are: garlic, ginger, turmeric, fenugreek, black pepper corns, korerima, beso bela, nutmeg, cinnamon, ajwain (carom), cloves, dried chilli, paprika, Berbere spice mix – literally meaning ‘hot’ in Amharic (the Ethiopian national language) this blend of spices is used in everything. It is made with variations of fenugreek, coriander, cardamom, cumin, chillies, allspice, cloves, pepper, paprika, ginger, garlic, turmeric, nutmeg, cinnamon, mustard seed, black cumin, carom, rue seeds, ethiopian basil (besobela), salt. Wine can be added to make it into a delicious marinade. Shiro is chickpea flour, also known as besan or garbanzo flour. Mitmita is a spicier (hot!) spice mix commonly used particularly with beef dishes. It’s main ingredient (by  far) is chilies, and then cardamom, cloves salt, all toasted and ground into a powder. Mekelesha is a blend of seven spices that is sprinkled on wots at the end of cooking, much like garam masala, to give a lovely aroma. The seven spices are:  cardamom, cinnamon, black pepper, nuteg, cumin, indian long pepper (called timin in Amharic), cloves.Korerima is often referred to as cardamom in recipes but is actually different, it is much larger and should be used if possible.")))
                  ],
                )

          ))
        ],
      ),
      bottomNavigationBar: Container(
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
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width20/2,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
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
    );
  }
}
