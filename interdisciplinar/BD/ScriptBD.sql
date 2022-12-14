D R O P   D A T A B A S E   I F   E X I S T S   I n t e r d i s c i p l i n a r ;  
  
 C R E A T E   D A T A B A S E   I n t e r d i s c i p l i n a r ;  
  
 U S E   I n t e r d i s c i p l i n a r ;  
  
 C R E A T E   T A B L E   U F   (  
 	 u f I d 	 V A R C H A R ( 2 ) 	 	 N O T   N U L L 	 P R I M A R Y   K E Y ,  
 	 u f D e s c 	 V A R C H A R ( 5 0 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   D o c u m e n t o s   (  
 	 d o c I d 	 I N T E G E R 	 	 	 N O T   N U L L 	 A U T O _ I N C R E M E N T 	 P R I M A R Y   K E Y ,  
 	 d o c D e s c 	 V A R C H A R ( 5 0 ) 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   P e s s o a s   (  
 	 p e s I d 	 	 I N T E G E R 	 	 	 N O T   N U L L 	 A U T O _ I N C R E M E N T 	 P R I M A R Y   K E Y ,  
 	 p e s N o m e 	 	 V A R C H A R ( 2 0 0 ) 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   P e s s o a s D o c u m e n t o s   (  
 	 p e s I d 	 	 I N T E G E R 	 	 	 N O T   N U L L ,  
 	 d o c I d 	 	 I N T E G E R 	 	 	 N O T   N U L L ,  
 	 p d o c C o d 	 	 V A R C H A R ( 1 5 0 ) 	 N O T   N U L L ,  
 	 p d o c U F 	 	 V A R C H A R ( 2 ) 	 	 N U L L ,  
 	 p d o c E m i s s a o 	 D A T E 	 	 	 N U L L ,  
 	 P R I M A R Y   K E Y   ( p e s I d ,   d o c I d ) ,  
 	 F O R E I G N   K E Y   ( p e s I d ) 	 	 	 R E F E R E N C E S   P e s s o a s ( p e s I d ) ,  
 	 F O R E I G N   K E Y   ( d o c I d ) 	 	 	 R E F E R E N C E S   D o c u m e n t o s ( d o c I d ) ,  
 	 F O R E I G N   K E Y   ( p d o c U F ) 	 	 R E F E R E N C E S   U F ( u f I d )  
 ) ;  
  
 C R E A T E   T A B L E   S a l a s   (  
 	 s a l I d 	 I N T E G E R 	 	 	 N O T   N U L L 	 A U T O _ I N C R E M E N T 	 P R I M A R Y   K E Y ,  
 	 s a l D e s c 	 V A R C H A R ( 5 0 ) 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   E s p e c i a l i d a d e s   (  
 	 e s p I d 	 I N T E G E R 	 	 	 N O T   N U L L 	 A U T O _ I N C R E M E N T 	 P R I M A R Y   K E Y ,  
 	 e s p D e s c 	 V A R C H A R ( 5 0 ) 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   P r o f i s s i o n a i s   (  
 	 p r o f I d 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 e s p I d 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 p r o f A t i v o 	 T I N Y I N T 	 	 N O T   N U L L   D E F A U L T   1 ,  
 	 P R I M A R Y   K E Y   ( p r o f I d ,   e s p I d ) ,  
 	 F O R E I G N   K E Y   ( p r o f I d ) 	 R E F E R E N C E S   P e s s o a s ( p e s I d ) ,  
 	 F O R E I G N   K E Y   ( e s p I d ) 	 	 R E F E R E N C E S   E s p e c i a l i d a d e s ( e s p I d )  
 ) ;  
  
 C R E A T E   T A B L E   P r o f i s s i o n a i s A g e n d a   (  
 	 p r o f I d 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 p r o f a D t 	 	 D A T E 	 	 N O T   N U L L ,  
 	 p r o f a H r I n i 	 T I M E 	 	 N O T   N U L L ,  
 	 p r o f a H r F i m 	 T I M E 	 	 N O T   N U L L ,  
 	 e s p I d 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 s a l I d 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 p r o f a A t i v o 	 T I N Y I N T 	 	 N O T   N U L L   D E F A U L T   1 ,  
 	 P R I M A R Y   K E Y   ( p r o f I d ,   p r o f a D t ,   p r o f a H r I n i ) ,  
 	 F O R E I G N   K E Y   ( p r o f I d ) 	 R E F E R E N C E S   P r o f i s s i o n a i s ( p r o f I d ) ,  
 	 F O R E I G N   K E Y   ( e s p I d ) 	 	 R E F E R E N C E S   E s p e c i a l i d a d e s ( e s p I d ) ,  
 	 F O R E I G N   K E Y   ( s a l I d ) 	 	 R E F E R E N C E S   S a l a s ( s a l I d )  
 ) ;  
  
 C R E A T E   T A B L E   S i s P e r f i l   (  
 	 s p e r f I d 	 	 I N T E G E R 	 	 N O T   N U L L 	 A U T O _ I N C R E M E N T 	 P R I M A R Y   K E Y ,  
 	 s p e r f D e s c 	 V A R C H A R ( 5 0 ) 	 N O T   N U L L ,  
 	 s p e r f A t i v o 	 T I N Y I N T   	 N O T   N U L L   D E F A U L T   1  
 ) ;  
  
 C R E A T E   T A B L E   S i s U s u a r i o s   (  
 	 p e s I d 	 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 s u s r L o g i n 	 	 V A R C H A R ( 5 0 ) 	 N O T   N U L L ,  
 	 s u s r S e n h a 	 	 V A R C H A R ( 5 0 ) 	 N O T   N U L L ,  
 	 s p e r f I d 	 	 	 I N T E G E R 	 	 N O T   N U L L ,  
 	 s u s r T e n t a t i v a s 	 T I N Y I N T 	 	 N O T   N U L L 	 D E F A U L T   0 ,  
 	 s u s r B l o q 	 	 T I N Y I N T 	 	 N O T   N U L L 	 D E F A U L T   0 ,  
 	 s u s r A t i v o 	 	 T I N Y I N T 	 	 N O T   N U L L 	 D E F A U L T   1 ,  
 	 P R I M A R Y   K E Y   ( p e s I d ,   s u s r L o g i n ) ,  
 	 F O R E I G N   K E Y   ( p e s I d ) 	 	 R E F E R E N C E S   P e s s o a s ( p e s I d )  
 ) ;  
  
 I N S E R T   I N T O   U F   ( u f I d ,   u f D e s c )   V A L U E S    
 	 ( ' - - ' ,   ' O u t r o s ' ) ,  
 	 ( ' A C ' ,   ' A c r e ' ) ,  
 	 ( ' A L ' ,   ' A l a g o a s ' ) ,  
 	 ( ' A M ' ,   ' A m a z o n a s ' ) ,  
 	 ( ' A P ' ,   ' A m a p ? ' ) ,  
 	 ( ' B A ' ,   ' B a h i a ' ) ,  
 	 ( ' C E ' ,   ' C e a r ? ' ) ,  
 	 ( ' D F ' ,   ' D i s t r i t o   F e d e r a l ' ) ,  
 	 ( ' E S ' ,   ' E s p ? r i t o   S a n t o ' ) ,  
 	 ( ' G O ' ,   ' G o i ? s ' ) ,  
 	 ( ' M A ' ,   ' M a r a n h ? o ' ) ,  
 	 ( ' M G ' ,   ' M i n a s   G e r a i s ' ) ,  
 	 ( ' M S ' ,   ' M a t o   G r o s s o   d o   S u l ' ) ,  
 	 ( ' M T ' ,   ' M a t o   G r o s s o ' ) ,  
 	 ( ' P A ' ,   ' P a r ? ' ) ,  
 	 ( ' P B ' ,   ' P a r a ? b a ' ) ,  
 	 ( ' P E ' ,   ' P e r n a m b u c o ' ) ,  
 	 ( ' P I ' ,   ' P i a u ? ' ) ,  
 	 ( ' P R ' ,   ' P a r a n ? ' ) ,  
 	 ( ' R J ' ,   ' R i o   d e   J a n e i r o ' ) ,  
 	 ( ' R N ' ,   ' R i o   G r a n d e   d o   N o r t e ' ) ,  
 	 ( ' R O ' ,   ' R o n d ? n i a ' ) ,  
 	 ( ' R R ' ,   ' R o r a i m a ' ) ,  
 	 ( ' R S ' ,   ' R i o   G r a n d e   d o   S u l ' ) ,  
 	 ( ' S C ' ,   ' S a n t a   C a t a r i n a ' ) ,  
 	 ( ' S E ' ,   ' S e r g i p e ' ) ,  
 	 ( ' S P ' ,   ' S ? o   P a u l o ' ) ,  
 	 ( ' T O ' ,   ' T o c a n t i n s ' ) ;  
  
 I N S E R T   I N T O   D o c u m e n t o s   ( d o c I d ,   d o c D e s c )   V A L U E S    
 	 ( 1 ,   ' S U S ' ) ,  
 	 ( 2 ,   ' C P F ' ) ,  
 	 ( 3 ,   ' R G ' ) ,  
 	 ( 4 ,   ' E M A I L ' ) ;  
  
 I N S E R T   I N T O   P e s s o a s   ( p e s I d ,   p e s N o m e )   V A L U E S    
 	 ( 1 ,       ' B E A T R I Z   T O R E Z I M   A F O N S O ' ) ,  
 	 ( 2 ,       ' B R U N O   G A B R I E L   R O D R I G U E S   P E L E G R I N A ' ) ,  
 	 ( 3 ,       ' E M E R S O N   B A S T O S   C H R I S T O ' ) ,  
 	 ( 4 ,       ' F E L I P E   S A N T O S   D A S   N E V E S ' ) ,  
 	 ( 5 ,       ' G A B R I E L   T E I X E I R A   D A   S I L V A ' ) ,  
 	 ( 6 ,       ' G U I L H E R M E   H E N R I Q U E   N O G U E I R A ' ) ,  
 	 ( 7 ,       ' J ? F F E R S O N   O R L A N D O   O L I V E I R A   D E   M O R A I S ' ) ,  
 	 ( 8 ,       ' J O ? O   V I C T O R   B I A N C A R D I   M A L H E I R O S ' ) ,  
 	 ( 9 ,       ' L E O N A R D O   C A M A R G O   D A   S I L V A ' ) ,  
 	 ( 1 0 ,     ' L U C A S   D E   O L I V E I R A   F E R N A N D E S   S I L V A ' ) ,  
 	 ( 1 1 ,     ' M A T E U S   F A V E R O   S A N T O S ' ) ,  
 	 ( 1 2 ,     ' M I L T O N   R O G E R I O   M I R A M I S A W A   F I L H O ' ) ,  
 	 ( 1 3 ,     ' M U R I L O   F R A N C I S C O   P A U L I N I   C O N T I N I ' ) ,  
 	 ( 1 4 ,     ' M U R I L O   P E D R O   P A C O L A   D A   S I L V A ' ) ,  
 	 ( 1 5 ,     ' N I E T Z S C H E   E A D I   S T R I N G A R I ' ) ,  
 	 ( 1 6 ,     ' P E D R O   H E N R I Q U E   F E R R E I R A   C O U T I N H O ' ) ,  
 	 ( 1 7 ,     ' R H Y A N   L U C A S   A L V E S   F E I T O S A ' ) ,  
 	 ( 1 8 ,     ' R O G E R I O   C A N D I D O   D E   O L I V E I R A ' ) ,  
 	 ( 1 9 ,     ' R O G E R I O   F R A N C I S C O   D E   S O U Z A ' ) ,  
 	 ( 2 0 ,     ' R Y A N N   A U G U S T O   B A R B O S A   S A N T O S ' ) ,  
 	 ( 2 1 ,     ' S A M U E L   L U C A S   B U E N O   D A   S I L V A ' ) ,  
 	 ( 2 2 ,     ' T A L I T A   A Z E V E D O   D O S   S A N T O S ' ) ,  
 	 ( 2 3 ,     ' V I C T O R   E M A N O E L   D E   O L I V E I R A ' ) ,  
 	 ( 2 4 ,     ' V I T ? R I A   D E   M E L O ' ) ,  
 	 ( 2 5 ,     ' A D A N I   C U S I N   S A C I L O T T I ' ) ,  
 	 ( 2 6 ,     ' A D E L M I R   D A   S I L V A   O L I V E I R A ' ) ,  
 	 ( 2 7 ,     ' A D I L S O N   S O U Z A   B A R R E T O ' ) ,  
 	 ( 2 8 ,     ' A D R I A   A L V A R E S   N O G U E I R A ' ) ,  
 	 ( 2 9 ,     ' A D R I A N A   M O R E T O   S G O B ' ) ,  
 	 ( 3 0 ,     ' A D R I A N O   M O R E T T I ' ) ,  
 	 ( 3 1 ,     ' A L E S S A N D R A   A P A R E C I D A   R I B E I R O   C O S T A ' ) ,  
 	 ( 3 2 ,     ' A L E S S A N D R A   C A Y R E S   S I L V A   G O N C A L V E S ' ) ,  
 	 ( 3 3 ,     ' A N A   L U C I A   D A   S I L V A   O N O F R E   G A T T O ' ) ,  
 	 ( 3 4 ,     ' A N A   M A R I A   A D O L P H O   P E R E I R A   P E R N A M B U C O ' ) ,  
 	 ( 3 5 ,     ' A N A   P A U L A   T U R E S S O   P I N T O ' ) ,  
 	 ( 3 6 ,     ' A N D R E   A N T O N I O   A L B I N O ' ) ,  
 	 ( 3 7 ,     ' A N D R E   L U I S   M A G O S S I ' ) ,  
 	 ( 3 8 ,     ' A N E L I S E   S T R I N G U E T T O ' ) ,  
 	 ( 3 9 ,     ' A N G E L A   P E R I M   H I P O L I T O ' ) ,  
 	 ( 4 0 ,     ' A N G E L O   R O B E R T O   D E   A N D R A D E   J U N I O R ' ) ,  
 	 ( 4 1 ,     ' A N T O N I O   C A R L O S   D E   A R R U D A ' ) ,  
 	 ( 4 2 ,     ' C A R L O S   A L B E R T O   R A M A L H O   D A   S I L V A ' ) ,  
 	 ( 4 3 ,     ' C A R L O S   E D U A R D O   I E N N E ' ) ,  
 	 ( 4 4 ,     ' C A R L O S   I N A C I O   E B E R L   F A C H E R I S ' ) ,  
 	 ( 4 5 ,     ' C A R L O S   R O B E R T O   D E   P A I V A ' ) ,  
 	 ( 4 6 ,     ' C A R L O S   R O B E R T O   M A R C H I O R I ' ) ,  
 	 ( 4 7 ,     ' C A S S I O   R I C A R D O   D E   C A S T R O ' ) ,  
 	 ( 4 8 ,     ' C E L I N A   Z A N A T T A   D E   S O U Z A ' ) ,  
 	 ( 4 9 ,     ' C E L S O   A U G U S T O   D E   S O U Z A ' ) ,  
 	 ( 5 0 ,     ' C L A U D I O   C A E T A N O   D E   C A M A R G O ' ) ,  
 	 ( 5 1 ,     ' C L A U D I O   T O R R E S   C L I N I ' ) ,  
 	 ( 5 2 ,     ' C L E B E R   A P A R E C I D O   N E V E S ' ) ,  
 	 ( 5 3 ,     ' C R I S T I A N E   F E R N A N D E S ' ) ,  
 	 ( 5 4 ,     ' D A N I E L   M A N T O V A N I ' ) ,  
 	 ( 5 5 ,     ' D I O G E N E S   L E V Y   C O L C E R N I A N I   B R A G A ' ) ,  
 	 ( 5 6 ,     ' E D N O R   C A R L O S   D O S   S A N T O S   J U N I O R ' ) ,  
 	 ( 5 7 ,     ' E R I C O   F R A N C I S C O   I N N O C E N T E ' ) ,  
 	 ( 5 8 ,     ' E R I K   A L O N S O   A R A Y A   D E   S O U Z A ' ) ,  
 	 ( 5 9 ,     ' E V A N D R O   M O R A E S ' ) ,  
 	 ( 6 0 ,     ' F A B I A N O   P E N T E A D O   O R S I ' ) ,  
 	 ( 6 1 ,     ' F A B R I C I O   L U I Z   D E   O L I V E I R A ' ) ,  
 	 ( 6 2 ,     ' F E R N A N D A   R O S S   F A G U N D E S ' ) ,  
 	 ( 6 3 ,     ' F R A N C I S C O   C A R L O S   D O   N A S C I M E N T O ' ) ,  
 	 ( 6 4 ,     ' G A B R I E L   N E G R I N   M O R E I R A ' ) ,  
 	 ( 6 5 ,     ' G E O R G E   A U G U S T O   M A N Z A T T O ' ) ,  
 	 ( 6 6 ,     ' G E R A L D O   C A N D I D O   D E   M O R A E S ' ) ,  
 	 ( 6 7 ,     ' G I O V A N A   P A T R I C I A   G E N T I L E ' ) ,  
 	 ( 6 8 ,     ' H E L I O   F R A N C O Z O   J U N I O R ' ) ,  
 	 ( 6 9 ,     ' H E N D E R S O N   T A V A R E S   D E   S O U Z A ' ) ,  
 	 ( 7 0 ,     ' H E R M O G E N I O   S E V E R I A N O   D A   R O C H A ' ) ,  
 	 ( 7 1 ,     ' H I L T O N   K O I T I   S A T O ' ) ,  
 	 ( 7 2 ,     ' J A C K S O N   H O M E R O   V I C E N T I M ' ) ,  
 	 ( 7 3 ,     ' J E I C E   G A L V A N I   D E   S O U S A   O L I V E I R A ' ) ,  
 	 ( 7 4 ,     ' J O A O   A D E M I L S O N   R I T A ' ) ,  
 	 ( 7 5 ,     ' J O A Q U I M   A N T O N I O   V I E I R A   P E R E I R A   L I M A ' ) ,  
 	 ( 7 6 ,     ' J O E L S O N   A U G U S T O   V I D A L ' ) ,  
 	 ( 7 7 ,     ' J O S E   R O B E R T O   M A D U R E I R A   J U N I O R ' ) ,  
 	 ( 7 8 ,     ' J U L I A N A   C R I S T I N A   V A N S A N ' ) ,  
 	 ( 7 9 ,     ' J U N I O   C E S A R   L I M A   B E N I T E S ' ) ,  
 	 ( 8 0 ,     ' K E L L Y   C R I S T I N A   S A B A R A ' ) ,  
 	 ( 8 1 ,     ' K L E B E R   D E   P A U L A   E   S I L V A ' ) ,  
 	 ( 8 2 ,     ' L E T I C I A   L I M A   I G N ? C I O ' ) ,  
 	 ( 8 3 ,     ' L E V I   P E R E I R A   D E   C A R V A L H O ' ) ,  
 	 ( 8 4 ,     ' L I L I A N   B R U N I N I ' ) ,  
 	 ( 8 5 ,     ' L U C I A N A   F E R R E I R A   B A P T I S T A ' ) ,  
 	 ( 8 6 ,     ' L U C I A N O   C R I C C O   P E R A R O ' ) ,  
 	 ( 8 7 ,     ' L U I S   G U S T A V O   D A   S I L V A ' ) ,  
 	 ( 8 8 ,     ' L U I S   O S V A L D O   M O N T E I R O   B O R T O L A T O ' ) ,  
 	 ( 8 9 ,     ' L U I Z   F E R N A N D O   T A V A R E S ' ) ,  
 	 ( 9 0 ,     ' L U I Z   G A B R I E L   L O P E S   A C U I O ' ) ,  
 	 ( 9 1 ,     ' M A R A   S I L V I A   N E G R I N I   B I A S I N I ' ) ,  
 	 ( 9 2 ,     ' M A R C I A   L E I T E   D E   L I M A ' ) ,  
 	 ( 9 3 ,     ' M A R C I A   M O R E I R A   S I M O E S ' ) ,  
 	 ( 9 4 ,     ' M A R C I A   V A L E R I A   M A S S A   C A V A L E T T O ' ) ,  
 	 ( 9 5 ,     ' M A R C I O   A U G U S T O ' ) ,  
 	 ( 9 6 ,     ' M A R C U S   R O D O L P H O   D E   L A C E R D A   T R I P P E ' ) ,  
 	 ( 9 7 ,     ' M A R I N A   C A R D O S O   F E R R E I R A ' ) ,  
 	 ( 9 8 ,     ' M A R I O   C E L I O   L O Z A N O   C O S T A ' ) ,  
 	 ( 9 9 ,     ' M A R I V A L D A   N E G R I ' ) ,  
 	 ( 1 0 0 ,   ' M A R L E N E   P E R E I R A   M A L A T E S T A ' ) ,  
 	 ( 1 0 1 ,   ' M A U R I C I O   D E   S O U Z A   B A R R E T O ' ) ,  
 	 ( 1 0 2 ,   ' M A U R O   A N T O N I O   R O D R I G U E S ' ) ,  
 	 ( 1 0 3 ,   ' M A X I M I L I A N O   A L V A R E S ' ) ,  
 	 ( 1 0 4 ,   ' M E L R Y   J A N E   D E   F R E I T A S   P I V A ' ) ,  
 	 ( 1 0 5 ,   ' M O N I C A   M A D A L E N A   F R I A S   L O U Z A D A ' ) ,  
 	 ( 1 0 6 ,   ' M O N I C A   M A R T O S   D E   R E Z E N D E   C A M P O S   A G U I R R E ' ) ,  
 	 ( 1 0 7 ,   ' N E L S O N   F I O R A V A N T I   J U N I O R ' ) ,  
 	 ( 1 0 8 ,   ' N E L S O N   P I C C H I   J U N I O R ' ) ,  
 	 ( 1 0 9 ,   ' O D E T T E   G O M E S   C H I A B R A N D O ' ) ,  
 	 ( 1 1 0 ,   ' P A M E L A   C A B B I A   D E   O L I V E I R A ' ) ,  
 	 ( 1 1 1 ,   ' P A U L A   A L E K S A   B I A N C H I ' ) ,  
 	 ( 1 1 2 ,   ' P E D R O   N O R B E R T O   D E   P A U L A   F I L H O ' ) ,  
 	 ( 1 1 3 ,   ' R A D I A N   V E G A   C O N S E J E R O ' ) ,  
 	 ( 1 1 4 ,   ' R A F A E L   C E R G O L I ' ) ,  
 	 ( 1 1 5 ,   ' R A V I Z O   O T O N I   D E   M A T O S   M A R Q U E S ' ) ,  
 	 ( 1 1 6 ,   ' R E N A N   A L E I X O   P A G A N A T T O ' ) ,  
 	 ( 1 1 7 ,   ' R E N A N   C A Z Z O L A T T O ' ) ,  
 	 ( 1 1 8 ,   ' R E N A N   S A C C E N T I   L O P E S ' ) ,  
 	 ( 1 1 9 ,   ' R E N A T A   F E R R A Z   D E   S O U Z A ' ) ,  
 	 ( 1 2 0 ,   ' R E N E   E T S U O   K A T A Y O S E ' ) ,  
 	 ( 1 2 1 ,   ' R I C A R D O   E L P I D I O   A N T U N E S   P E R E I R A ' ) ,  
 	 ( 1 2 2 ,   ' R I C A R D O   F E R R E I R A   D E   C A R V A L H O ' ) ,  
 	 ( 1 2 3 ,   ' R I C A R D O   P E N T E A D O   F E R R E I R A ' ) ,  
 	 ( 1 2 4 ,   ' R I S O N E I D E   A R A U J O   S O U S A ' ) ,  
 	 ( 1 2 5 ,   ' R O B E R T O   M E L L E   P I N T O   J U N I O R ' ) ,  
 	 ( 1 2 6 ,   ' R O B S O N   A L B E R G H I N I ' ) ,  
 	 ( 1 2 7 ,   ' R O D R I G O   C A M I L O   M A N E N T E ' ) ,  
 	 ( 1 2 8 ,   ' R O M A R I O   M A R O N   J U N I O R ' ) ,  
 	 ( 1 2 9 ,   ' R O M I L S O N   N A S C I M E N T O   D E   A N D R A D E ' ) ,  
 	 ( 1 3 0 ,   ' R O N I L D O   A P A R E C I D O   F E R R E I R A ' ) ,  
 	 ( 1 3 1 ,   ' R O S A   M A R I A   L I N D O L F O   P O N T E S ' ) ,  
 	 ( 1 3 2 ,   ' R O S E L I   A P A R E C I D A   F A U S T I N I   S I L V E I R A   L I M A ' ) ,  
 	 ( 1 3 3 ,   ' S A N D R O   A U G U S T O   D E   C A M A R G O ' ) ,  
 	 ( 1 3 4 ,   ' S I L V I O   R O D R I G O   D O S   R E I S ' ) ,  
 	 ( 1 3 5 ,   ' S I M O N E   A P A R E C I D A   A L V E S   D E   S O U Z A   S I L V A ' ) ,  
 	 ( 1 3 6 ,   ' T H A L E S   A U G U S T O   F I L I P I N I   R I G H I ' ) ,  
 	 ( 1 3 7 ,   ' T H I A G O   I N A C I O   D E   S O U Z A ' ) ,  
 	 ( 1 3 8 ,   ' T I B E R E   S A M U E L   R O D R I G U E S ' ) ,  
 	 ( 1 3 9 ,   ' V I C T O R   P R E S T E S   U C H ? A ' ) ,  
 	 ( 1 4 0 ,   ' V I N I C I U S   F E R R A C I N I   B I S S O L I ' ) ,  
 	 ( 1 4 1 ,   ' V I N I C I U S   K A L I L   V E N C E S L A U   X A V I E R ' ) ,  
 	 ( 1 4 2 ,   ' V I T O R   A N T O N I O   C A P P U C C E L L I ' ) ,  
 	 ( 1 4 3 ,   ' V I V I A N E   A P A R E C I D A   S I L V A   C E C A T O ' ) ,  
 	 ( 1 4 4 ,   ' W A L T E R   Y U K I O   I D A ' ) ,  
 	 ( 1 4 5 ,   ' W I L S O N   R O B E R T O   L A C E R D A   D E   S A N T A N A ' ) ,  
 	 ( 1 4 6 ,   ' W I L S O N   T O L E D O   M U N H O S ' ) ;  
  
 I N S E R T   I N T O   P e s s o a s D o c u m e n t o s   ( p e s I d ,   d o c I d ,   p d o c C o d )   V A L U E S    
 	 ( 1 , 4 , ' b e a t r i z . a f o n s o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 , 4 , ' b r u n o . p e l e g r i n a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 , 4 , ' e m e r s o n . c h r i s t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 , 4 , ' f e l i p e . n e v e s 3 4 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 , 4 , ' g a b r i e l . s i l v a 2 4 6 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 , 4 , ' g u i l h e r m e . n o g u e i r a 4 8 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 , 4 , ' j e f f e r s o n . m o r a i s 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 , 4 , ' j o a o . m a l h e i r o s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 , 4 , ' l e o n a r d o . s i l v a 1 4 7 6 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 , 4 , ' l u c a s . s i l v a 3 6 8 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 , 4 , ' m a t e u s . s a n t o s 3 4 7 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 , 4 , ' m i l t o n . m i r a m i s a w a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 , 4 , ' m u r i l o . c o n t i n i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 , 4 , ' m u r i l o . s i l v a 2 7 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 5 , 4 , ' n i e t z s c h e . s t r i n g a r i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 6 , 4 , ' p e d r o . c o u t i n h o 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 7 , 4 , ' r h y a n . f e i t o s a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 8 , 4 , ' r o g e r i o . o l i v e i r a 1 4 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 9 , 4 , ' r o g e r i o . s o u z a 9 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 0 , 4 , ' r y a n n . s a n t o s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 1 , 4 , ' s a m u e l . s i l v a 4 7 8 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 2 , 4 , ' t a l i t a . s a n t o s 2 0 8 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 3 , 4 , ' v i c t o r . o l i v e i r a 3 8 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 4 , 4 , ' v i t o r i a . m e l o 1 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 5 , 4 , ' a d a n i . s a c i l o t t i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 6 , 4 , ' a d e l m i r . o l i v e i r a 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 7 , 4 , ' a d i l s o n . b a r r e t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 8 , 4 , ' a d r i a . n o g u e i r a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 2 9 , 4 , ' a d r i a n a . s g o b 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 0 , 4 , ' a d r i a n o . m o r e t t i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 1 , 4 , ' a l e s s a n d r a . c o s t a 4 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 2 , 4 , ' a l e s s a n d r a . s i l v a 1 2 8 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 3 , 4 , ' a n a . g a t t o 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 4 , 4 , ' a n a . p e r n a m b u c o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 5 , 4 , ' a n a . t u r e s s o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 6 , 4 , ' a n d r e . a l b i n o 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 7 , 4 , ' a n d r e . m a g o s s i 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 8 , 4 , ' a n e l i s e . s t r i n g u e t t o 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 3 9 , 4 , ' a n g e l a . h i p o l i t o 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 0 , 4 , ' a n g e l o . a n d r a d e 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 1 , 4 , ' a n t o n i o . a r r u d a 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 2 , 4 , ' c a r l o s . s i l v a 1 1 6 9 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 3 , 4 , ' c a r l o s . i e n n e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 4 , 4 , ' c a r l o s . f a c h e r i s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 5 , 4 , ' c a r l o s . p a i v a 7 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 6 , 4 , ' c a r l o s . m a r c h i o r i 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 7 , 4 , ' c a s s i o . c a s t r o 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 8 , 4 , ' c e l i n a . s o u z a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 4 9 , 4 , ' c e l s o . s o u z a 3 6 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 0 , 4 , ' c l a u d i o . c a m a r g o 6 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 1 , 4 , ' c l a u d i o . c l i n i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 2 , 4 , ' c l e b e r . n e v e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 3 , 4 , ' c r i s t i a n e . f e r n a n d e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 4 , 4 , ' d a n i e l . m a n t o v a n i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 5 , 4 , ' d i o g e n e s . b r a g a 4 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 6 , 4 , ' e d n o r . s a n t o s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 7 , 4 , ' e r i c o . i n n o c e n t e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 8 , 4 , ' e r i k . s o u z a 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 5 9 , 4 , ' e v a n d r o . m o r a e s 1 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 0 , 4 , ' f a b i a n o . o r s i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 1 , 4 , ' f a b r i c i o . o l i v e i r a 6 7 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 2 , 4 , ' f e r n a n d a . f a g u n d e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 3 , 4 , ' f r a n c i s c o . n a s c i m e n t o 3 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 4 , 4 , ' g a b r i e l . m o r e i r a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 5 , 4 , ' g e o r g e . m a n z a t t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 6 , 4 , ' g e r a l d o . m o r a e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 7 , 4 , ' g i o v a n a . g e n t i l e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 8 , 4 , ' h e l i o . f r a n c o z o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 6 9 , 4 , ' h e n d e r s o n . s o u z a 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 0 , 4 , ' h e r m o g e n i o . r o c h a 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 1 , 4 , ' h i l t o n . s a t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 2 , 4 , ' j a c k s o n . v i c e n t i m @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 3 , 4 , ' j e i c e . o l i v e i r a 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 4 , 4 , ' j o a o . r i t a 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 5 , 4 , ' j o a q u i m . l i m a 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 6 , 4 , ' j o e l s o n . v i d a l @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 7 , 4 , ' m a d u r e i r a . j u n i o r @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 8 , 4 , ' j u l i a n a . v a n s a n @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 7 9 , 4 , ' j u n i o . b e n i t e s 4 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 0 , 4 , ' k e l l y . s a b a r a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 1 , 4 , ' k l e b e r . s i l v a 7 8 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 2 , 4 , ' l e t i c i a . i g n a c i o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 3 , 4 , ' l e v i . c a r v a l h o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 4 , 4 , ' l i l i a n . b r u n i n i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 5 , 4 , ' l u c i a n a . b a p t i s t a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 6 , 4 , ' l u c i a n o . p e r a r o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 7 , 4 , ' l u i s . s i l v a 6 1 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 8 , 4 , ' l u i s . b o r t o l a t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 8 9 , 4 , ' l u i z . t a v a r e s 1 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 0 , 4 , ' l u i z _ g a b r i e l _ a c u i o @ e t e c . c o m . b r ' ) ,  
 	 ( 9 1 , 4 , ' m a r a . b i a s i n i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 2 , 4 , ' m a r c i a . l i m a 4 9 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 3 , 4 , ' m a r c i a . s i m o e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 4 , 4 , ' m a r c i a . c a v a l e t t o 4 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 5 , 4 , ' m a r c i o . a u g u s t o 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 6 , 4 , ' m a r c u s . t r i p p e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 7 , 4 , ' m a r i n a . f e r r e i r a 3 7 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 8 , 4 , ' m a r i o . c o s t a 7 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 9 9 , 4 , ' m a r i v a l d a . n e g r i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 0 , 4 , ' m a r l e n e . m a l a t e s t a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 1 , 4 , ' m a u r i c i o . b a r r e t o 4 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 2 , 4 , ' m a u r o . r o d r i g u e s 1 0 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 3 , 4 , ' m a x i m i l i a n o . a l v a r e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 4 , 4 , ' m e l r y . f r e i t a s @ e t e c . s p . g o v ' ) ,  
 	 ( 1 0 5 , 4 , ' m o n i c a . l o u z a d a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 6 , 4 , ' m o n i c a . a g u i r r e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 7 , 4 , ' n e l s o n . j u n i o r @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 8 , 4 , ' n e l s o n . j u n i o 1 1 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 0 9 , 4 , ' o d e t t e . c h i b r a n d o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 0 , 4 , ' p a m e l a . c a b b i a 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 1 , 4 , ' p a t r i c i a . v a l l e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 2 , 4 , ' p e d r o . f i l h o 5 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 3 , 4 , ' r a d i a n . c o n s e j e r o 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 4 , 4 , ' r a f a e l . c e r g o l i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 5 , 4 , ' r a v i z o . m a r q u e s 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 6 , 4 , ' r e n a n . p a g a n a t t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 7 , 4 , ' r e n a n . c a z z o l a t t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 8 , 4 , ' r e n a n . l o p e s 2 0 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 1 9 , 4 , ' r e n a t a . s o u z a 7 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 0 , 4 , ' r e n e . k a t a y o s e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 1 , 4 , ' r i c a r d o . p e r e i r a 6 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 2 , 4 , ' r i c a r d o . c a r v a l h o 2 6 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 3 , 4 , ' r i c a r d o . f e r r e i r a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 4 , 4 , ' r i s o n e i d e . s o u s a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 5 , 4 , ' r o b e r t o . m e l l e 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 6 , 4 , ' r o b s o n . a l b e r g h i n i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 7 , 4 , ' r o d r i g o . m a n e n t e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 8 , 4 , ' r o m a r i o . j u n i o r @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 2 9 , 4 , ' r o m i l s o n . a n d r a d e @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 0 , 4 , ' r o n i l d o . f e r r e i r a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 1 , 4 , ' r o s a . l i n d o l f o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 2 , 4 , ' r o s e l i . l @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 3 , 4 , ' s a n d r o . c a m a r g o 2 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 4 , 4 , ' s i l v i o . r e i s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 5 , 4 , ' s i m o n e . s i l v a 2 1 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 6 , 4 , ' t h a l e s . r i g h i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 7 , 4 , ' t h i a g o . s o u z a 3 0 3 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 8 , 4 , ' t i b e r e . r o d r i g u e s @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 3 9 , 4 , ' v i c t o r . u c h o a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 0 , 4 , ' v i n i c i u s . b i s s o l i 0 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 1 , 4 , ' v i n i c i u s . x a v i e r 2 1 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 2 , 4 , ' v i t o r . c a p p u c c e l l i @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 3 , 4 , ' v i v i a n e . c e c a t o @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 4 , 4 , ' w a l t e r . i d a @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 5 , 4 , ' w i l s o n . s a n t a n a 5 @ e t e c . s p . g o v . b r ' ) ,  
 	 ( 1 4 6 , 4 , ' w i l s o n . m u n h o s @ e t e c . s p . g o v . b r ' ) ;  
  
 I N S E R T   I N T O   S a l a s   ( s a l I d ,   s a l D e s c )   V A L U E S    
 	 ( 1 ,   ' S a l a   1 ' ) ,  
 	 ( 2 ,   ' S a l a   2 ' ) ,  
 	 ( 3 ,   ' S a l a   3 ' ) ,  
 	 ( 4 ,   ' S a l a   4 ' ) ,  
 	 ( 5 ,   ' S a l a   5 ' ) ;  
  
 I N S E R T   I N T O   E s p e c i a l i d a d e s   ( e s p I d ,   e s p D e s c )   V A L U E S    
 	 ( 1 ,   ' E n f e r m a r i a ' ) ,  
 	 ( 2 ,   ' C l ? n i c o   G e r a l ' ) ,  
 	 ( 3 ,   ' O d o n t o l o g i a ' ) ,  
 	 ( 4 ,   ' P e d i a t r i a ' ) ,  
 	 ( 5 ,   ' G e r i a t r i a ' ) ,  
 	 ( 6 ,   ' P s i q u i a t r i a ' ) ,  
 	 ( 7 ,   ' R e c e p ? ? o ' ) ;  
  
 I N S E R T   I N T O   P r o f i s s i o n a i s   ( p r o f I d ,   e s p I d )   V A L U E S    
 	 ( 5 8 ,     1 ) ,  
 	 ( 1 3 0 ,   2 ) ,  
 	 ( 1 2 6 ,   2 ) ,  
 	 ( 1 1 6 ,   3 ) ,  
 	 ( 8 0 ,     4 ) ,  
 	 ( 6 0 ,     5 ) ,  
 	 ( 8 6 ,     6 ) ,  
 	 ( 1 1 5 ,   7 ) ;  
 	  
 I N S E R T   I N T O   P r o f i s s i o n a i s   ( p r o f I d ,   e s p I d ,   p r o f A t i v o )   V A L U E S   ( 1 3 2 ,   2 ,   0 ) ;  
 I N S E R T   I N T O   P r o f i s s i o n a i s   ( p r o f I d ,   e s p I d ,   p r o f A t i v o )   V A L U E S   ( 9 3 ,   2 ,   0 ) ;  
 I N S E R T   I N T O   P r o f i s s i o n a i s   ( p r o f I d ,   e s p I d ,   p r o f A t i v o )   V A L U E S   ( 7 7 ,   6 ,   0 ) ;  
  
 I N S E R T   I N T O   P r o f i s s i o n a i s A g e n d a   ( p r o f I d ,   p r o f a D t ,   p r o f a H r I n i ,   p r o f a H r F i m ,   e s p I d ,   s a l I d )   V A L U E S    
 	 ( 5 8 ,     ' 2 0 2 2 - 0 4 - 0 5 ' , ' 0 9 : 0 0 ' , ' 1 1 : 3 0 ' , 1 , 1 ) ,  
 	 ( 5 8 ,     ' 2 0 2 2 - 0 4 - 0 5 ' , ' 1 3 : 0 0 ' , ' 1 6 : 0 0 ' , 1 , 1 ) ,  
 	 ( 1 3 0 ,   ' 2 0 2 2 - 0 4 - 0 5 ' , ' 0 8 : 0 0 ' , ' 1 2 : 0 0 ' , 2 , 2 ) ,  
 	 ( 1 3 0 ,   ' 2 0 2 2 - 0 4 - 0 5 ' , ' 1 3 : 0 0 ' , ' 1 7 : 0 0 ' , 2 , 2 ) ,  
 	 ( 1 2 6 ,   ' 2 0 2 2 - 0 4 - 0 5 ' , ' 0 8 : 3 0 ' , ' 1 0 : 0 0 ' , 2 , 3 ) ,  
 	 ( 1 1 6 ,   ' 2 0 2 2 - 0 4 - 0 5 ' , ' 1 3 : 0 0 ' , ' 1 5 : 0 0 ' , 3 , 3 ) ,  
 	 ( 8 0 ,     ' 2 0 2 2 - 0 4 - 0 5 ' , ' 0 7 : 0 0 ' , ' 0 9 : 0 0 ' , 4 , 4 ) ,  
 	 ( 6 0 ,     ' 2 0 2 2 - 0 4 - 0 5 ' , ' 1 0 : 0 0 ' , ' 1 2 : 0 0 ' , 5 , 4 ) ,  
 	 ( 8 6 ,     ' 2 0 2 2 - 0 4 - 0 5 ' , ' 1 3 : 0 0 ' , ' 1 6 : 3 0 ' , 6 , 4 ) ,  
  
 	 ( 5 8 ,     ' 2 0 2 2 - 0 4 - 0 6 ' , ' 0 9 : 0 0 ' , ' 1 1 : 3 0 ' , 1 , 1 ) ,  
 	 ( 5 8 ,     ' 2 0 2 2 - 0 4 - 0 6 ' , ' 1 3 : 0 0 ' , ' 1 6 : 0 0 ' , 1 , 1 ) ,  
 	 ( 1 3 0 ,   ' 2 0 2 2 - 0 4 - 0 6 ' , ' 0 8 : 0 0 ' , ' 1 2 : 0 0 ' , 2 , 2 ) ,  
 	 ( 1 3 0 ,   ' 2 0 2 2 - 0 4 - 0 6 ' , ' 1 3 : 0 0 ' , ' 1 7 : 0 0 ' , 2 , 2 ) ,  
 	 ( 1 2 6 ,   ' 2 0 2 2 - 0 4 - 0 6 ' , ' 0 8 : 3 0 ' , ' 1 0 : 0 0 ' , 2 , 3 ) ,  
 	 ( 1 1 6 ,   ' 2 0 2 2 - 0 4 - 0 6 ' , ' 1 3 : 0 0 ' , ' 1 5 : 0 0 ' , 3 , 3 ) ,  
 	 ( 8 0 ,     ' 2 0 2 2 - 0 4 - 0 6 ' , ' 0 7 : 0 0 ' , ' 0 9 : 0 0 ' , 4 , 4 ) ,  
 	 ( 6 0 ,     ' 2 0 2 2 - 0 4 - 0 6 ' , ' 1 0 : 0 0 ' , ' 1 2 : 0 0 ' , 5 , 4 ) ,  
 	 ( 8 6 ,     ' 2 0 2 2 - 0 4 - 0 6 ' , ' 1 3 : 0 0 ' , ' 1 6 : 3 0 ' , 6 , 4 ) ,  
  
 	 ( 5 8 ,     ' 2 0 2 2 - 0 4 - 0 7 ' , ' 0 9 : 0 0 ' , ' 1 1 : 3 0 ' , 1 , 1 ) ,  
 	 ( 5 8 ,     ' 2 0 2 2 - 0 4 - 0 7 ' , ' 1 3 : 0 0 ' , ' 1 6 : 0 0 ' , 1 , 1 ) ,  
 	 ( 1 3 0 ,   ' 2 0 2 2 - 0 4 - 0 7 ' , ' 0 8 : 0 0 ' , ' 1 2 : 0 0 ' , 2 , 2 ) ,  
 	 ( 1 3 0 ,   ' 2 0 2 2 - 0 4 - 0 7 ' , ' 1 3 : 0 0 ' , ' 1 7 : 0 0 ' , 2 , 2 ) ,  
 	 ( 1 2 6 ,   ' 2 0 2 2 - 0 4 - 0 7 ' , ' 0 8 : 3 0 ' , ' 1 0 : 0 0 ' , 2 , 3 ) ,  
 	 ( 1 1 6 ,   ' 2 0 2 2 - 0 4 - 0 7 ' , ' 1 3 : 0 0 ' , ' 1 5 : 0 0 ' , 3 , 3 ) ,  
 	 ( 8 0 ,     ' 2 0 2 2 - 0 4 - 0 7 ' , ' 0 7 : 0 0 ' , ' 0 9 : 0 0 ' , 4 , 4 ) ,  
 	 ( 6 0 ,     ' 2 0 2 2 - 0 4 - 0 7 ' , ' 1 0 : 0 0 ' , ' 1 2 : 0 0 ' , 5 , 4 ) ,  
 	 ( 8 6 ,     ' 2 0 2 2 - 0 4 - 0 7 ' , ' 1 3 : 0 0 ' , ' 1 6 : 3 0 ' , 6 , 4 ) ;  
 I N S E R T   I N T O   S i s P e r f i l   ( s p e r f I d ,   s p e r f D e s c ,   s p e r f A t i v o )   V A L U E S    
 	 ( 1 ,   ' A d m i n i s t r a d o r ' ,   1 ) ,  
 	 ( 2 ,   ' A t e n d e n t e ' ,           1 ) ,  
 	 ( 3 ,   ' P r o f i s s i o n a i s ' ,   1 ) ,  
 	 ( 4 ,   ' T V ' ,                         1 ) ,  
 	 ( 5 ,   ' T e s t e s ' ,                 0 ) ;  
  
 I N S E R T   I N T O   S i s U s u a r i o s   ( p e s I d ,   s u s r L o g i n ,   s u s r S e n h a , s p e r f I d )   V A L U E S    
 	 ( 1 1 5 ,   ' r a v i z o ' ,     ' 1 2 3 ' ,   7 ) ,  
 	 ( 5 8 ,     ' e r i k ' ,         ' 1 2 3 ' ,   3 ) ,  
 	 ( 1 3 0 ,   ' r o n i l d o ' ,   ' 1 2 3 ' ,   3 ) ,  
 	 ( 1 2 6 ,   ' r o b s o n ' ,     ' 1 2 3 ' ,   3 ) ,  
 	 ( 1 1 6 ,   ' r e n a n ' ,       ' 1 2 3 ' ,   3 ) ,  
 	 ( 8 0 ,     ' k e l l y ' ,       ' 1 2 3 ' ,   3 ) ,  
 	 ( 6 0 ,     ' f a b i a n o ' ,   ' 1 2 3 ' ,   3 ) ,  
 	 ( 8 6 ,     ' l u c i a n o ' ,   ' 1 2 3 ' ,   3 ) ;  
  
 