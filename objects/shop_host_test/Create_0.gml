event_inherited();

encounter_text = -1;

menu_text = "* Hello,&what would you like?";

host_sprite = spr_shopkeeper

shop_item[0] = ITEM_TOY_KNIFE;
shop_item[1] = ITEM_STICK;
shop_item[2] = ITEM_BANDAGE;
shop_item[3] = ITEM_FADED_RIBBON;
buy_before_text = "Buy&something?";
//buy_choice_text = "Are&you&ready?";
buy_after_text = "Thanks!";
buy_false_text_0 = "Sorry, you don't&have enough";
buy_false_text_1 = "You have&too many&Items.";

sold_available = true;
//sold_before_text = -1;
//sold_choice_text = -1;
//sold_after_text = -1;
sold_false_text = "* That's OK!";

dialog_before_text = "What do&you need";
dialog[0] = Shop_SetDialog("Sans",c_rainbow,"Oh, that weird skeleton?{pause}{clear}Um... let's talk& about&me!");
dialog[1] = Shop_SetDialog("You",c_red,"Oh, who is 'You', exactly?{pause}{clear}'You' means me!{pause}{clear}IT'S ALL&ABOUT ME!!!");
dialog[2] = Shop_SetDialog("Me",c_white,"You are bland.");
dialog[3] = Shop_SetDialog("adrk",c_white,"Hey! This is&privet!",Shop_SetDialog("dj",c_white,"Hey! This is&privet!!!!!!!!!"));
//dialog[0] = sdt_1_1;
//dialog[1] = sdt_2_1;
//dialog[2] = sdt_3_1;
//dialog[3] = sdt_4_1;
exit_text = "* ByeBye.";