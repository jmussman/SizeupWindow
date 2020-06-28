FasdUAS 1.101.10   ��   ��    k             l     ��  ��      SizeupPlus.scpt     � 	 	     S i z e u p P l u s . s c p t   
  
 l     ��  ��    : 4 Copyright � 2020 Joel Mussman. All rights reserved.     �   h   C o p y r i g h t   �   2 0 2 0   J o e l   M u s s m a n .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    5 / This script is released under the MIT license.     �   ^   T h i s   s c r i p t   i s   r e l e a s e d   u n d e r   t h e   M I T   l i c e n s e .      l     ��������  ��  ��        l     ��  ��    u o This script positions to SizeUp by Irradiated Software leaves off (http://www.irradiatedsoftware.com/sizeup/).     �   �   T h i s   s c r i p t   p o s i t i o n s   t o   S i z e U p   b y   I r r a d i a t e d   S o f t w a r e   l e a v e s   o f f   ( h t t p : / / w w w . i r r a d i a t e d s o f t w a r e . c o m / s i z e u p / ) .      l     ��   ��    q k It was inspired by a suggestion from Irradiated Software to use scripts to control SizeUp. FastScript from      � ! ! �   I t   w a s   i n s p i r e d   b y   a   s u g g e s t i o n   f r o m   I r r a d i a t e d   S o f t w a r e   t o   u s e   s c r i p t s   t o   c o n t r o l   S i z e U p .   F a s t S c r i p t   f r o m   " # " l     �� $ %��   $ q k Red Sweater Software (https://www.red-sweater.com/fastscripts/) is the recommended # solution for creating    % � & & �   R e d   S w e a t e r   S o f t w a r e   ( h t t p s : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / )   i s   t h e   r e c o m m e n d e d   #   s o l u t i o n   f o r   c r e a t i n g #  ' ( ' l     �� ) *��   ) W Q shortcuts to run the script (although you can use Automator or other solutions).    * � + + �   s h o r t c u t s   t o   r u n   t h e   s c r i p t   ( a l t h o u g h   y o u   c a n   u s e   A u t o m a t o r   o r   o t h e r   s o l u t i o n s ) . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 u o The focus of the script is to resize and position the current window in ways that SizeUp does not incorporate.    1 � 2 2 �   T h e   f o c u s   o f   t h e   s c r i p t   i s   t o   r e s i z e   a n d   p o s i t i o n   t h e   c u r r e n t   w i n d o w   i n   w a y s   t h a t   S i z e U p   d o e s   n o t   i n c o r p o r a t e . /  3 4 3 l     �� 5 6��   5 u o Because FastScript does not have any way to pass arguments when it launches a script or program, the name that    6 � 7 7 �   B e c a u s e   F a s t S c r i p t   d o e s   n o t   h a v e   a n y   w a y   t o   p a s s   a r g u m e n t s   w h e n   i t   l a u n c h e s   a   s c r i p t   o r   p r o g r a m ,   t h e   n a m e   t h a t 4  8 9 8 l     �� : ;��   : q k the script is saved with controls what the script tells SizeUp to do. Unlike SizeUp which resizes based on    ; � < < �   t h e   s c r i p t   i s   s a v e d   w i t h   c o n t r o l s   w h a t   t h e   s c r i p t   t e l l s   S i z e U p   t o   d o .   U n l i k e   S i z e U p   w h i c h   r e s i z e s   b a s e d   o n 9  = > = l     �� ? @��   ? n h the halves and quarters of the screen, this script moves the window and sets the size based on what the    @ � A A �   t h e   h a l v e s   a n d   q u a r t e r s   o f   t h e   s c r e e n ,   t h i s   s c r i p t   m o v e s   t h e   w i n d o w   a n d   s e t s   t h e   s i z e   b a s e d   o n   w h a t   t h e >  B C B l     �� D E��   D T N user tells it through the script name. The naming options for deployment are:    E � F F �   u s e r   t e l l s   i t   t h r o u g h   t h e   s c r i p t   n a m e .   T h e   n a m i n g   o p t i o n s   f o r   d e p l o y m e n t   a r e : C  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K ! 	spTopLeft-[Width]x[Height]    L � M M 6 	 s p T o p L e f t - [ W i d t h ] x [ H e i g h t ] J  N O N l     �� P Q��   P # 	spTopCenter-[Width]x[Height]    Q � R R : 	 s p T o p C e n t e r - [ W i d t h ] x [ H e i g h t ] O  S T S l     �� U V��   U " 	spTopRight-[Width]x[Height]    V � W W 8 	 s p T o p R i g h t - [ W i d t h ] x [ H e i g h t ] T  X Y X l     �� Z [��   Z $ 	spMiddleLeft-[Width]x[Height]    [ � \ \ < 	 s p M i d d l e L e f t - [ W i d t h ] x [ H e i g h t ] Y  ] ^ ] l     �� _ `��   _ &  	spMiddleCenter-[Width]x[Height]    ` � a a @ 	 s p M i d d l e C e n t e r - [ W i d t h ] x [ H e i g h t ] ^  b c b l     �� d e��   d % 	spMiddleRight-[Width]x[Height]    e � f f > 	 s p M i d d l e R i g h t - [ W i d t h ] x [ H e i g h t ] c  g h g l     �� i j��   i $ 	spBottomLeft-[Width]x[Height]    j � k k < 	 s p B o t t o m L e f t - [ W i d t h ] x [ H e i g h t ] h  l m l l     �� n o��   n &  	spBottomCenter-[Width]x[Height]    o � p p @ 	 s p B o t t o m C e n t e r - [ W i d t h ] x [ H e i g h t ] m  q r q l     �� s t��   s % 	spBottomRight-[Width]x[Height]    t � u u > 	 s p B o t t o m R i g h t - [ W i d t h ] x [ H e i g h t ] r  v w v l     �� x y��   x   	spOrigin-[Width]x[Height]    y � z z 4 	 s p O r i g i n - [ W i d t h ] x [ H e i g h t ] w  { | { l     �� } ~��   } - '	sp[xOffset]x[yOffset]-[width]x[height]    ~ �   N 	 s p [ x O f f s e t ] x [ y O f f s e t ] - [ w i d t h ] x [ h e i g h t ] |  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � o i	Middle is halfway vertical, while Center is halfway horizontal. Origin will change the size, but not the    � � � � � 	 M i d d l e   i s   h a l f w a y   v e r t i c a l ,   w h i l e   C e n t e r   i s   h a l f w a y   h o r i z o n t a l .   O r i g i n   w i l l   c h a n g e   t h e   s i z e ,   b u t   n o t   t h e �  � � � l     �� � ���   � j d	upper-left corner of the window. Replace the [Width] and [Height] with the desired width and height    � � � � � 	 u p p e r - l e f t   c o r n e r   o f   t h e   w i n d o w .   R e p l a c e   t h e   [ W i d t h ]   a n d   [ H e i g h t ]   w i t h   t h e   d e s i r e d   w i d t h   a n d   h e i g h t �  � � � l     �� � ���   �  	of the window.    � � � �  	 o f   t h e   w i n d o w . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � k e	Carefully follow FastScripts instructions for where to put the script(s). Make sure you leave it out    � � � � � 	 C a r e f u l l y   f o l l o w   F a s t S c r i p t s   i n s t r u c t i o n s   f o r   w h e r e   t o   p u t   t h e   s c r i p t ( s ) .   M a k e   s u r e   y o u   l e a v e   i t   o u t �  � � � l     �� � ���   � ] W	of any Applications folder where FastScripts will bind it to a particular application.    � � � � � 	 o f   a n y   A p p l i c a t i o n s   f o l d e r   w h e r e   F a s t S c r i p t s   w i l l   b i n d   i t   t o   a   p a r t i c u l a r   a p p l i c a t i o n . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Implemntation details:    � � � � .   I m p l e m n t a t i o n   d e t a i l s : �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � [ U	Contrary to popular believe you can use regular expressions inside of AppleScript by    � � � � � 	 C o n t r a r y   t o   p o p u l a r   b e l i e v e   y o u   c a n   u s e   r e g u l a r   e x p r e s s i o n s   i n s i d e   o f   A p p l e S c r i p t   b y �  � � � l     �� � ���   � X R	leveraging the Foundation framework. This script includes a good example of that.    � � � � � 	 l e v e r a g i n g   t h e   F o u n d a t i o n   f r a m e w o r k .   T h i s   s c r i p t   i n c l u d e s   a   g o o d   e x a m p l e   o f   t h a t . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � j d 	NSScreen's mainScreen is always the screen with the window that has focus; the frame in mainScreen    � � � � �   	 N S S c r e e n ' s   m a i n S c r e e n   i s   a l w a y s   t h e   s c r e e n   w i t h   t h e   w i n d o w   t h a t   h a s   f o c u s ;   t h e   f r a m e   i n   m a i n S c r e e n �  � � � l     �� � ���   � . ( 	has the origin and size of hte window.    � � � � P   	 h a s   t h e   o r i g i n   a n d   s i z e   o f   h t e   w i n d o w . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � h b	 It was the "Access NSScreen.scpt" script (https://gist.github.com/henryroe/8810193) that gave me    � � � � � 	   I t   w a s   t h e   " A c c e s s   N S S c r e e n . s c p t "   s c r i p t   ( h t t p s : / / g i s t . g i t h u b . c o m / h e n r y r o e / 8 8 1 0 1 9 3 )   t h a t   g a v e   m e �  � � � l     �� � ���   � M G 	the understanding of how to read the width and height from the frame.    � � � � �   	 t h e   u n d e r s t a n d i n g   o f   h o w   t o   r e a d   t h e   w i d t h   a n d   h e i g h t   f r o m   t h e   f r a m e . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � \ V 	I had trouble running the script from the shortcut until I realized that I needed to    � � � � �   	 I   h a d   t r o u b l e   r u n n i n g   t h e   s c r i p t   f r o m   t h e   s h o r t c u t   u n t i l   I   r e a l i z e d   t h a t   I   n e e d e d   t o �  � � � l     �� � ���   � [ U 	grab the application name and then force it to reactivate just prior to issuing the    � � � � �   	 g r a b   t h e   a p p l i c a t i o n   n a m e   a n d   t h e n   f o r c e   i t   t o   r e a c t i v a t e   j u s t   p r i o r   t o   i s s u i n g   t h e �  � � � l     �� � ���   �   	resize command.    � � � � "   	 r e s i z e   c o m m a n d . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � m g	SizeUp is used because the script will trigger a security question for each application window that it    � � � � � 	 S i z e U p   i s   u s e d   b e c a u s e   t h e   s c r i p t   w i l l   t r i g g e r   a   s e c u r i t y   q u e s t i o n   f o r   e a c h   a p p l i c a t i o n   w i n d o w   t h a t   i t �  � � � l     �� � ���   � k e	would try to modify directly. By using SizeUp one security question is hit to ask if FastScripts can    � � � � � 	 w o u l d   t r y   t o   m o d i f y   d i r e c t l y .   B y   u s i n g   S i z e U p   o n e   s e c u r i t y   q u e s t i o n   i s   h i t   t o   a s k   i f   F a s t S c r i p t s   c a n �  � � � l     �� � ���   � ^ X	control SizeUp, and SizeUp has already been granted control to resize and move windows.    � � � � � 	 c o n t r o l   S i z e U p ,   a n d   S i z e U p   h a s   a l r e a d y   b e e n   g r a n t e d   c o n t r o l   t o   r e s i z e   a n d   m o v e   w i n d o w s . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      � � � � x     �� � ���   � 1      ��
�� 
ascr � �� ���
�� 
minv � m       � � � � �  2 . 4��   �    Yosemite (10.10) or later    � � � � 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r �  � � � x    �� �����   � 4   	 �� �
�� 
frmk � m     � � � � �  F o u n d a t i o n��   �  �  � x     ������   2   ��
�� 
osax��     l     ��������  ��  ��    j     #���� H0 "nsregularexpressioncaseinsensitive "NSRegularExpressionCaseInsensitive N     " m     !����  	 j   $ )��
�� *0 nsregularexpression NSRegularExpression
 N   $ ( n  $ ' o   % '���� *0 nsregularexpression NSRegularExpression m   $ %��
�� misccura	  l      j   * /���� 0 
nsnotfound 
NSNotFound N   * . [   * - m   * + C������� m   + ,����� C = see http://latenightsw.com/high-sierra-applescriptobjc-bugs/    � z   s e e   h t t p : / / l a t e n i g h t s w . c o m / h i g h - s i e r r a - a p p l e s c r i p t o b j c - b u g s /  l     ��������  ��  ��    l     ��������  ��  ��    l     �� ��     parseScriptName     �!!     p a r s e S c r i p t N a m e "#" l     ��$%��  $ w q Return a four-element list containing the vertical and horizontal positions along with the width and the height.   % �&& �   R e t u r n   a   f o u r - e l e m e n t   l i s t   c o n t a i n i n g   t h e   v e r t i c a l   a n d   h o r i z o n t a l   p o s i t i o n s   a l o n g   w i t h   t h e   w i d t h   a n d   t h e   h e i g h t .# '(' l     ��������  ��  ��  ( )*) l     ��������  ��  ��  * +,+ i   0 3-.- I      ��/���� "0 parsescriptname parseScriptName/ 0��0 1      ��
�� 
pnam��  ��  . k     �11 232 l     ��������  ��  ��  3 454 r     
676 n    898 I    ��:���� &0 stringwithstring_ stringWithString_: ;��; 1    �
� 
pnam��  ��  9 n    <=< o    �~�~ 0 nsstring NSString= m     �}
�} misccura7 o      �|�| 0 nsstringname nsStringName5 >?> r    @A@ m    BB �CC � s p ( T o p | M i d d l e | B o t t o m | O r i g i n | \ d + x ) ( L e f t | C e n t e r | R i g h t | \ d + - ) ? - ? ( \ d + ) x ( \ d + )A o      �{�{ 0 pattern  ? DED r    !FGF n   HIH I    �zJ�y�z Z0 +regularexpressionwithpattern_options_error_ +regularExpressionWithPattern_options_error_J KLK o    �x�x 0 pattern  L MNM o    �w�w H0 "nsregularexpressioncaseinsensitive "NSRegularExpressionCaseInsensitiveN O�vO l   P�u�tP m    �s
�s 
msng�u  �t  �v  �y  I o    �r�r *0 nsregularexpression NSRegularExpressionG o      �q�q 	0 regex  E QRQ r   " 3STS n  " 1UVU I   # 1�pW�o�p @0 matchesinstring_options_range_ matchesInString_options_range_W XYX o   # $�n�n 0 nsstringname nsStringNameY Z[Z m   $ %�m�m  [ \�l\ J   % -]] ^_^ m   % &�k�k  _ `�j` n  & +aba I   ' +�i�h�g�i 
0 length  �h  �g  b o   & '�f�f 0 nsstringname nsStringName�j  �l  �o  V o   " #�e�e 	0 regex  T o      �d�d 0 matches  R cdc r   4 <efe J   4 :gg hih m   4 5jj �kk  i lml m   5 6nn �oo  m pqp m   6 7rr �ss  q t�ct m   7 8uu �vv  �c  f o      �b�b 	0 parts  d wxw l  = =�a�`�_�a  �`  �_  x yzy l  = =�^{|�^  { M G There will be one top-level match with the four captures underneath it   | �}} �   T h e r e   w i l l   b e   o n e   t o p - l e v e l   m a t c h   w i t h   t h e   f o u r   c a p t u r e s   u n d e r n e a t h   i tz ~~ l  = =�]�\�[�]  �\  �[   ��� X   = ���Z�� k   M ��� ��� l  M M�Y�X�W�Y  �X  �W  � ��� l  M M�V���V  � a [ Ignore the top level match, it is the whole original input; just spin through the captures   � ��� �   I g n o r e   t h e   t o p   l e v e l   m a t c h ,   i t   i s   t h e   w h o l e   o r i g i n a l   i n p u t ;   j u s t   s p i n   t h r o u g h   t h e   c a p t u r e s� ��� l  M M�U�T�S�U  �T  �S  � ��� l  M M�R���R  � < 6 set wholeRange to (aMatch's rangeAtIndex:0) as record   � ��� l   s e t   w h o l e R a n g e   t o   ( a M a t c h ' s   r a n g e A t I n d e x : 0 )   a s   r e c o r d� ��� l  M M�Q���Q  � ~ x set wholevalue to text ((wholeRange's location) + 1) thru ((wholeRange's location) + (wholeRange's |length|)) of sample   � ��� �   s e t   w h o l e v a l u e   t o   t e x t   ( ( w h o l e R a n g e ' s   l o c a t i o n )   +   1 )   t h r u   ( ( w h o l e R a n g e ' s   l o c a t i o n )   +   ( w h o l e R a n g e ' s   | l e n g t h | ) )   o f   s a m p l e� ��� l  M M�P�O�N�P  �O  �N  � ��� r   M X��� c   M V��� n  M R��� o   N R�M�M  0 numberofranges numberOfRanges� o   M N�L�L 0 amatch aMatch� m   R U�K
�K 
long� o      �J�J 0 	numranges 	numRanges� ��� l  Y Y�I�H�G�I  �H  �G  � ��F� Y   Y ���E���D� k   e ��� ��� r   e q��� c   e o��� l  e k��C�B� n  e k��� I   f k�A��@�A 0 rangeatindex_ rangeAtIndex_� ��?� o   f g�>�> 0 
rangeindex 
rangeIndex�?  �@  � o   e f�=�= 0 amatch aMatch�C  �B  � m   k n�<
�< 
reco� o      �;�; 0 	partrange 	partRange� ��:� Z  r ����9�8� >  r }��� n  r w��� o   s w�7�7 0 location  � o   r s�6�6 0 	partrange 	partRange� o   w |�5�5 0 
nsnotfound 
NSNotFound� l 	 � ���4�3� r   � ���� n   � ���� 7  � ��2��
�2 
ctxt� l  � ���1�0� [   � ���� l  � ���/�.� n  � ���� o   � ��-�- 0 location  � o   � ��,�, 0 	partrange 	partRange�/  �.  � m   � ��+�+ �1  �0  � l  � ���*�)� [   � ���� l  � ���(�'� n  � ���� o   � ��&�& 0 location  � o   � ��%�% 0 	partrange 	partRange�(  �'  � l  � ���$�#� n  � ���� o   � ��"�" 
0 length  � o   � ��!�! 0 	partrange 	partRange�$  �#  �*  �)  � 1   � �� 
�  
pnam� n      ��� 4   � ���
� 
cobj� o   � ��� 0 
rangeindex 
rangeIndex� o   � ��� 	0 parts  �4  �3  �9  �8  �:  �E 0 
rangeindex 
rangeIndex� m   \ ]�� � \   ] `��� o   ] ^�� 0 	numranges 	numRanges� m   ^ _�� �D  �F  �Z 0 amatch aMatch� o   @ A�� 0 matches  � ��� l  � �����  �  �  � ��� r   � ���� c   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 	0 parts  � m   � ��
� 
long� n      ��� 4   � ���
� 
cobj� m   � ��� � o   � ��� 	0 parts  � ��� r   � ���� c   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 	0 parts  � m   � ��
� 
long� n      ��� 4   � ��
�
�
 
cobj� m   � ��	�	 � o   � ��� 	0 parts  � ��� L   � ��� o   � ��� 	0 parts  �  , ��� l     ����  �  �  � ��� l     ��� �  �  �   � ��� l     ������  �   getScriptName   � ���    g e t S c r i p t N a m e� ��� l     ������  � - ' Return the script name that is running   � ��� N   R e t u r n   t h e   s c r i p t   n a m e   t h a t   i s   r u n n i n g�    l     ��������  ��  ��    l     ��������  ��  ��    i   4 7 I      �������� 0 getscriptname getScriptName��  ��   k     < 	
	 l     ��������  ��  ��  
  l     ����   &   Get the path to the script file    � @   G e t   t h e   p a t h   t o   t h e   s c r i p t   f i l e  l     ��������  ��  ��    O      k      r     n     1   	 ��
�� 
pnam l   	���� I   	����
�� .earsffdralis        afdr  f    ��  ��  ��   o      ���� 
0 myname   �� r     !  n    "#" 1    ��
�� 
extn# l   $����$ I   ��%��
�� .earsffdralis        afdr%  f    ��  ��  ��  ! o      ���� 0 	extension  ��   m     &&�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   '(' l   ��������  ��  ��  ( )*) l   ��+,��  +   Strip off the extension   , �-- 0   S t r i p   o f f   t h e   e x t e n s i o n* ./. l   ��������  ��  ��  / 010 Z    923����2 ?    454 n    676 1    ��
�� 
leng7 o    ���� 0 	extension  5 m    ����  3 k   ! 588 9:9 l  ! !��;<��  ; H B Make sure that `text item delimiters` has its default value here.   < �== �   M a k e   s u r e   t h a t   ` t e x t   i t e m   d e l i m i t e r s `   h a s   i t s   d e f a u l t   v a l u e   h e r e .: >��> r   ! 5?@? c   ! 3ABA n   ! 1CDC 7 " 1��EF
�� 
cobjE m   & (���� F d   ) 0GG l  * /H����H [   * /IJI m   * +���� J l  + .K����K n   + .LML 1   , .��
�� 
lengM o   + ,���� 0 	extension  ��  ��  ��  ��  D o   ! "���� 
0 myname  B m   1 2��
�� 
ctxt@ o      ���� 
0 myname  ��  ��  ��  1 NON l  : :��������  ��  ��  O P��P L   : <QQ o   : ;���� 
0 myname  ��   RSR l     ��������  ��  ��  S TUT l     ��������  ��  ��  U VWV l     ��XY��  X   getFrontApplicationName   Y �ZZ 0   g e t F r o n t A p p l i c a t i o n N a m eW [\[ l     ��]^��  ] 8 2 Return the name of the application that has focus   ^ �__ d   R e t u r n   t h e   n a m e   o f   t h e   a p p l i c a t i o n   t h a t   h a s   f o c u s\ `a` l     ��������  ��  ��  a bcb l     ��������  ��  ��  c ded i   8 ;fgf I      �������� 20 getfrontapplicationname getFrontApplicationName��  ��  g k     hh iji l     ��������  ��  ��  j klk O     mnm k    oo pqp r    rsr 6   tut 4   ��v
�� 
pcapv m    ���� u =  	 wxw 1   
 ��
�� 
pisfx m    ��
�� boovtrues o      ���� 0 frontapp frontAppq y��y r    z{z n    |}| 1    ��
�� 
pnam} o    ���� 0 frontapp frontApp{ o      ���� 0 frontappname frontAppName��  n m     ~~�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  l � l   ��������  ��  ��  � ���� L    �� o    ���� 0 frontappname frontAppName��  e ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
  min   � ���    m i n� ��� l     ������  � . ( Choose the minimum value of two numbers   � ��� P   C h o o s e   t h e   m i n i m u m   v a l u e   o f   t w o   n u m b e r s� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   < ?��� I      ������� 0 min  � ��� o      ���� 0 x  � ���� o      ���� 0 y  ��  ��  � Z     ������ B     ��� o     ���� 0 x  � o    ���� 0 y  � L    �� o    ���� 0 x  ��  � L    �� o    ���� 0 y  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   main   � ��� 
   m a i n� ��� l     ������  � ' ! The main function of the program   � ��� B   T h e   m a i n   f u n c t i o n   o f   t h e   p r o g r a m� ��� l     ��~�}�  �~  �}  � ��� l     �|�{�z�|  �{  �z  � ��� i   @ C��� I      �y�x�w�y 0 main  �x  �w  � Q    ���� k   ��� ��� l   �v�u�t�v  �u  �t  � ��� r    
��� I    �s�r�q�s 20 getfrontapplicationname getFrontApplicationName�r  �q  � o      �p�p 0 frontappname frontAppName� ��� r    ��� I    �o�n�m�o 0 getscriptname getScriptName�n  �m  � o      �l�l 0 
scriptname 
scriptName� ��� r    ��� I    �k��j�k "0 parsescriptname parseScriptName� ��i� o    �h�h 0 
scriptname 
scriptName�i  �j  � o      �g�g 0 	neworigin 	newOrigin� ��� l   �f�e�d�f  �e  �d  � ��� l   �c���c  �   Break apart newOrigin   � ��� ,   B r e a k   a p a r t   n e w O r i g i n� ��� l   �b�a�`�b  �a  �`  � ��� r    "��� n     ��� 4     �_�
�_ 
cobj� m    �^�^ � o    �]�] 0 	neworigin 	newOrigin� o      �\�\ 0 vertical  � ��� r   # )��� n   # '��� 4   $ '�[�
�[ 
cobj� m   % &�Z�Z � o   # $�Y�Y 0 	neworigin 	newOrigin� o      �X�X 0 
horizontal  � ��� r   * 2��� c   * 0��� n   * .��� 4   + .�W�
�W 
cobj� m   , -�V�V � o   * +�U�U 0 	neworigin 	newOrigin� m   . /�T
�T 
long� o      �S�S 0 windowwidth windowWidth� ��� r   3 ;��� c   3 9��� n   3 7��� 4   4 7�R�
�R 
cobj� m   5 6�Q�Q � o   3 4�P�P 0 	neworigin 	newOrigin� m   7 8�O
�O 
long� o      �N�N 0 windowheight windowHeight� ��� l  < <�M�L�K�M  �L  �K  � ��� r   < S��� b   < Q��� b   < O� � b   < M b   < K b   < I b   < G b   < E	
	 b   < C b   < A b   < ? m   < = �  " o   = >�J�J 0 
scriptname 
scriptName m   ? @ �  "   - >   {   o   A B�I�I 0 vertical  
 m   C D �  ,   o   E F�H�H 0 
horizontal   m   G H �  ,   o   I J�G�G 0 windowwidth windowWidth m   K L �  ,    o   M N�F�F 0 windowheight windowHeight� m   O P �    }� o      �E�E &0 originvaluestring originValueString�  l  T T�D�C�B�D  �C  �B     l  T T�A!"�A  ! 5 / Debugging statement left intact for future use   " �## ^   D e b u g g i n g   s t a t e m e n t   l e f t   i n t a c t   f o r   f u t u r e   u s e  $%$ l  T T�@&'�@  & ; 5 display dialog scriptName & ": " & originValueString   ' �(( j   d i s p l a y   d i a l o g   s c r i p t N a m e   &   " :   "   &   o r i g i n V a l u e S t r i n g% )*) l  T T�?�>�=�?  �>  �=  * +,+ l  T T�<-.�<  -   Check the results   . �// $   C h e c k   t h e   r e s u l t s, 010 l  T T�;�:�9�;  �:  �9  1 232 Z   T�45�864 F   T _787 ?   T W9:9 o   T U�7�7 0 windowwidth windowWidth: m   U V�6�6  8 ?   Z ];<; o   Z [�5�5 0 windowheight windowHeight< m   [ \�4�4  5 k   b�== >?> l  b b�3�2�1�3  �2  �1  ? @A@ l  b b�0BC�0  B . ( Get the width and height of the screen.   C �DD P   G e t   t h e   w i d t h   a n d   h e i g h t   o f   t h e   s c r e e n .A EFE l  b b�/�.�-�/  �.  �-  F GHG l  b b�,IJ�,  I E ? These references are left just to show how we got to the frame   J �KK ~   T h e s e   r e f e r e n c e s   a r e   l e f t   j u s t   t o   s h o w   h o w   w e   g o t   t o   t h e   f r a m eH LML l  b b�+�*�)�+  �*  �)  M NON l  b b�(PQ�(  P K E set mousePosition to current application's NSEvent's mouseLocation()   Q �RR �   s e t   m o u s e P o s i t i o n   t o   c u r r e n t   a p p l i c a t i o n ' s   N S E v e n t ' s   m o u s e L o c a t i o n ( )O STS l  b b�'UV�'  U C = set allScreens to current application's NSScreen's screens()   V �WW z   s e t   a l l S c r e e n s   t o   c u r r e n t   a p p l i c a t i o n ' s   N S S c r e e n ' s   s c r e e n s ( )T XYX l  b b�&Z[�&  Z I C set currentScreen to current application's NSScreen's mainScreen()   [ �\\ �   s e t   c u r r e n t S c r e e n   t o   c u r r e n t   a p p l i c a t i o n ' s   N S S c r e e n ' s   m a i n S c r e e n ( )Y ]^] l  b b�%�$�#�%  �$  �#  ^ _`_ l  b mabca r   b mded n  b kfgf I   g k�"�!� �" 0 visibleframe visibleFrame�!  �   g n  b ghih o   e g�� 0 
mainscreen 
mainScreeni n  b ejkj o   c e�� 0 nsscreen NSScreenk m   b c�
� misccurae o      �� 0 currentframe currentFrameb E ? returns {{0, 0}, {width, height}}, minus the dock if on-screen   c �ll ~   r e t u r n s   { { 0 ,   0 } ,   { w i d t h ,   h e i g h t } } ,   m i n u s   t h e   d o c k   i f   o n - s c r e e n` mnm r   n wopo n   n uqrq 4   r u�s
� 
cobjs m   s t�� r n   n rtut 4   o r�v
� 
cobjv m   p q�� u o   n o�� 0 currentframe currentFramep o      �� 0 screenwidth screenWidthn wxw r   x �yzy n   x {|{ 4   | �}
� 
cobj} m   } ~�� | n   x |~~ 4   y |��
� 
cobj� m   z {��  o   x y�� 0 currentframe currentFramez o      �� 0 screenheight screenHeightx ��� l  � �����  �  �  � ��� l  � �����  � E ? Do not let the window width and height exceed the screen size.   � ��� ~   D o   n o t   l e t   t h e   w i n d o w   w i d t h   a n d   h e i g h t   e x c e e d   t h e   s c r e e n   s i z e .� ��� l  � ���
�	�  �
  �	  � ��� r   � ���� I   � ����� 0 min  � ��� o   � ��� 0 windowwidth windowWidth� ��� o   � ��� 0 screenwidth screenWidth�  �  � o      �� 0 windowwidth windowWidth� ��� r   � ���� I   � ����� 0 min  � ��� o   � �� �  0 windowheight windowHeight� ���� o   � ����� 0 screenheight screenHeight��  �  � o      ���� 0 windowheight windowHeight� ��� l  � ���������  ��  ��  � ��� Z   � �������� F   � ���� =  � ���� o   � ����� 0 windowwidth windowWidth� m   � �����  � =  � ���� o   � ����� 0 windowheight windowHeight� m   � �����  � k   � ��� ��� I  � ������
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� l 	 � ������� m   � ��� ��� x S i z e u p P l u s :   c a n n o t   p a r s e   w i d t h   a n d   h e i g h t   f r o m   s c r i p t   n a m e :  ��  ��  � o   � ����� &0 originvaluestring originValueString� m   � ��� ��� ^ .   P l e a s e   f o l l o w   t h e   s c r i p t   n a m i n g   i n s t r u c t i o n s .��  � ���� L   � �����  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  � : 4 Calculate the origin based on the script file name.   � ��� h   C a l c u l a t e   t h e   o r i g i n   b a s e d   o n   t h e   s c r i p t   f i l e   n a m e .� ��� l  � ���������  ��  ��  � ��� r   � ���� m   � �����  � o      ���� 0 xoffset xOffset� ��� r   � ���� m   � �����  � o      ���� 0 yoffset yOffset� ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 	offsetset 	offsetSet� ��� l  � ���������  ��  ��  � ��� l  � �������  � [ U The origin could be entered as two numbers (with trailing - and x) so try that first   � ��� �   T h e   o r i g i n   c o u l d   b e   e n t e r e d   a s   t w o   n u m b e r s   ( w i t h   t r a i l i n g   -   a n d   x )   s o   t r y   t h a t   f i r s t� ��� l  � ���������  ��  ��  � ��� Q   � ������ k   � ��� ��� r   � ���� c   � ���� l  � ������� n   � ���� 7  � �����
�� 
ctxt� m   � ����� � m   � �������� o   � ����� 0 
horizontal  ��  ��  � m   � ���
�� 
long� o      ���� 0 xoffset xOffset� ��� r   � ���� c   � ���� l  � ������� n   � ���� 7  � �����
�� 
ctxt� m   � ����� � m   � �������� o   � ����� 0 vertical  ��  ��  � m   � ���
�� 
long� o      ���� 0 yoffset yOffset� ���� r   � ���� m   � ���
�� boovtrue� o      ���� 0 	offsetset 	offsetSet��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  � 9 3 If the origin is not numeric then check the values   � ��� f   I f   t h e   o r i g i n   i s   n o t   n u m e r i c   t h e n   c h e c k   t h e   v a l u e s� ��� l  � ���������  ��  ��  � ��� Z   ��������� H   � ��� o   � ����� 0 	offsetset 	offsetSet� k  ��� � � Z  R =  o  ���� 0 vertical   m   �  T o p r  
	
	 m  
����  
 o      ���� 0 yoffset yOffset  =  o  ���� 0 vertical   m   �  M i d d l e  r  ! \   l ���� ^   o  ���� 0 screenheight screenHeight m  ���� ��  ��   l ���� ^   o  ���� 0 windowheight windowHeight m  ���� ��  ��   o      ���� 0 yoffset yOffset  = $)  o  $%���� 0 vertical    m  %(!! �""  B o t t o m #$# r  ,1%&% l ,/'����' \  ,/()( o  ,-���� 0 screenheight screenHeight) o  -.���� 0 windowheight windowHeight��  ��  & o      ���� 0 yoffset yOffset$ *+* = 49,-, o  45���� 0 vertical  - m  58.. �//  O r i g i n+ 0��0 r  <?121 m  <=������2 o      ���� 0 yoffset yOffset��   k  BR33 454 I BO��6��
�� .sysodlogaskr        TEXT6 b  BK787 b  BG9:9 l 	BE;����; m  BE<< �== h S i z e u p P l u s :   c a n n o t   p a r s e   v e r t i c a l   f r o m   s c r i p t   n a m e :  ��  ��  : o  EF���� &0 originvaluestring originValueString8 m  GJ>> �?? ^ .   P l e a s e   f o l l o w   t h e   s c r i p t   n a m i n g   i n s t r u c t i o n s .��  5 @��@ L  PR����  ��    ABA l SS��������  ��  ��  B C��C Z  S�DEFGD = SXHIH o  ST���� 0 
horizontal  I m  TWJJ �KK  L e f tE r  [^LML m  [\����  M o      ���� 0 xoffset xOffsetF NON = afPQP o  ab���� 0 
horizontal  Q m  beRR �SS  C e n t e rO TUT r  irVWV \  ipXYX l ilZ����Z ^  il[\[ o  ij���� 0 screenwidth screenWidth\ m  jk���� ��  ��  Y l lo]����] ^  lo^_^ o  lm���� 0 windowwidth windowWidth_ m  mn���� ��  ��  W o      ���� 0 xoffset xOffsetU `a` = uzbcb o  uv���� 0 
horizontal  c m  vydd �ee 
 R i g h ta fgf r  }�hih l }�j����j \  }�klk o  }~���� 0 screenwidth screenWidthl o  ~���� 0 windowwidth windowWidth��  ��  i o      ���� 0 xoffset xOffsetg mnm = ��opo o  ������ 0 
horizontal  p m  ��qq �rr  n s��s r  ��tut m  ��������u o      �� 0 xoffset xOffset��  G k  ��vv wxw I ���~y�}
�~ .sysodlogaskr        TEXTy b  ��z{z b  ��|}| l 	��~�|�{~ m  �� ��� l S i z e u p P l u s :   c a n n o t   p a r s e   h o r i z o n t a l   f r o m   s c r i p t   n a m e :  �|  �{  } o  ���z�z &0 originvaluestring originValueString{ m  ���� ��� ^ .   P l e a s e   f o l l o w   t h e   s c r i p t   n a m i n g   i n s t r u c t i o n s .�}  x ��y� L  ���x�x  �y  ��  ��  ��  � ��� l ���w�v�u�w  �v  �u  � ��� l ���t���t  � M G We have to reactivate the application that was active when we entered,   � ��� �   W e   h a v e   t o   r e a c t i v a t e   t h e   a p p l i c a t i o n   t h a t   w a s   a c t i v e   w h e n   w e   e n t e r e d ,� ��� l ���s���s  � 6 0 then we can tell SizeUp to set the window size.   � ��� `   t h e n   w e   c a n   t e l l   S i z e U p   t o   s e t   t h e   w i n d o w   s i z e .� ��� l ���r�q�p�r  �q  �p  � ��� O  ����� k  ���� ��� I ���o�n�m
�o .miscactvnull��� ��� null�n  �m  � ��l� Z  �����k�� = ����� o  ���j�j 0 yoffset yOffset� m  ���i�i��� O ����� I ���h��g
�h .SzUpRsiznull���     QDpt� J  ���� ��� o  ���f�f 0 windowwidth windowWidth� ��e� o  ���d�d 0 windowheight windowHeight�e  �g  � m  �����                                                                                  SzUp  alis    "  Macintosh HD                   BD ����
SizeUp.app                                                     ����            ����  
 cu             Applications  /:Applications:SizeUp.app/   
 S i z e U p . a p p    M a c i n t o s h   H D  Applications/SizeUp.app   / ��  �k  � O ����� I ���c��b
�c .SzUpMvRsnull���     qdrt� J  ���� ��� o  ���a�a 0 xoffset xOffset� ��� o  ���`�` 0 yoffset yOffset� ��� o  ���_�_ 0 windowwidth windowWidth� ��^� o  ���]�] 0 windowheight windowHeight�^  �b  � m  �����                                                                                  SzUp  alis    "  Macintosh HD                   BD ����
SizeUp.app                                                     ����            ����  
 cu             Applications  /:Applications:SizeUp.app/   
 S i z e U p . a p p    M a c i n t o s h   H D  Applications/SizeUp.app   / ��  �l  � 4  ���\�
�\ 
capp� o  ���[�[ 0 frontappname frontAppName� ��Z� l ���Y�X�W�Y  �X  �W  �Z  �8  6 k  ���� ��� l ���V�U�T�V  �U  �T  � ��S� I ���R��Q
�R .sysodlogaskr        TEXT� b  ����� b  ����� m  ���� ��� L S i z e u p P l u s :   c a n n o t   p a r s e   s c r i p t   n a m e :  � o  ���P�P &0 originvaluestring originValueString� m  ���� ��� ^ .   P l e a s e   f o l l o w   t h e   s c r i p t   n a m i n g   i n s t r u c t i o n s .�Q  �S  3 ��O� l ���N�M�L�N  �M  �L  �O  � R      �K��
�K .ascrerr ****      � ****� l     ��J�I� o      �H�H 0 errormessage errorMessage�J  �I  � �G��F
�G 
errn� l     ��E�D� o      �C�C 0 errornumber errorNumber�E  �D  �F  � k  ��� ��� l ���B�A�@�B  �A  �@  � ��� l ���?���?  � h b Catch any other error messages; normally we don't want to reveal internal workings to the user so   � ��� �   C a t c h   a n y   o t h e r   e r r o r   m e s s a g e s ;   n o r m a l l y   w e   d o n ' t   w a n t   t o   r e v e a l   i n t e r n a l   w o r k i n g s   t o   t h e   u s e r   s o� ��� l ���>���>  � + % simply tell them something happened.   � ��� J   s i m p l y   t e l l   t h e m   s o m e t h i n g   h a p p e n e d .� ��� l ���=���=  �  		   � ���  	 	� ��� l ���<���<  � O I display dialog "SizeupPlus: error " & errorNumber & " : " & errorMessage   � ��� �   d i s p l a y   d i a l o g   " S i z e u p P l u s :   e r r o r   "   &   e r r o r N u m b e r   &   "   :   "   &   e r r o r M e s s a g e� ��� l ���;�:�9�;  �:  �9  � ��8� I ��7��6
�7 .sysodlogaskr        TEXT� m  � �� ��� 6 S i z e u p P l u s :   i n t e r n a l   e r r o r .�6  �8  � ��� l     �5�4�3�5  �4  �3  � ��2� l    ��1�0� I     �/�.�-�/ 0 main  �.  �-  �1  �0  �2       �,���+���������,  � 
�*�)�(�'�&�%�$�#�"�!
�* 
pimr�) H0 "nsregularexpressioncaseinsensitive "NSRegularExpressionCaseInsensitive�( *0 nsregularexpression NSRegularExpression�' 0 
nsnotfound 
NSNotFound�& "0 parsescriptname parseScriptName�% 0 getscriptname getScriptName�$ 20 getfrontapplicationname getFrontApplicationName�# 0 min  �" 0 main  
�! .aevtoappnull  �   � ****� � ��  �  ���� � ��
� 
vers�  � ���
� 
cobj� ��   � �
� 
frmk�  � ���
� 
cobj� ��   �
� 
osax�  �+ � �� ��
� misccura� *0 nsregularexpression NSRegularExpression� C�      � �.������ "0 parsescriptname parseScriptName� ��� �  �
� 
pnam�  � 
������
�	���
� 
pnam� 0 nsstringname nsStringName� 0 pattern  � 	0 regex  � 0 matches  �
 	0 parts  �	 0 amatch aMatch� 0 	numranges 	numRanges� 0 
rangeindex 
rangeIndex� 0 	partrange 	partRange� ���B��� ��jnru��������������������
� misccura� 0 nsstring NSString� &0 stringwithstring_ stringWithString_
� 
msng� Z0 +regularexpressionwithpattern_options_error_ +regularExpressionWithPattern_options_error_�  
0 length  �� @0 matchesinstring_options_range_ matchesInString_options_range_�� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****��  0 numberofranges numberOfRanges
�� 
long�� 0 rangeatindex_ rangeAtIndex_
�� 
reco�� 0 location  
�� 
ctxt� ���,�k+ E�O�E�Ob  �b  �m+ E�O��jj�j+ lvm+ E�O�����vE�O p�[��l kh �a ,a &E�O Ok�kkh ��k+ a &E�O�a ,b   %�[a \[Z�a ,k\Z�a ,��,2��/FY h[OY��[OY��O��m/a &��m/FO���/a &���/FO�� ������� ���� 0 getscriptname getScriptName��  ��  � ������ 
0 myname  �� 0 	extension    &������������
�� .earsffdralis        afdr
�� 
pnam
�� 
extn
�� 
leng
�� 
cobj
�� 
ctxt�� =� )j �,E�O)j �,E�UO��,j �[�\[Zk\Zl��,'2�&E�Y hO�� ��g�������� 20 getfrontapplicationname getFrontApplicationName��  ��   ������ 0 frontapp frontApp�� 0 frontappname frontAppName ~������
�� 
pcap  
�� 
pisf
�� 
pnam�� � *�k/�[�,\Ze81E�O��,E�UO�� ����������� 0 min  �� ����   ������ 0 x  �� 0 y  ��   ������ 0 x  �� 0 y    �� �� �Y �� ����������� 0 main  ��  ��   ���������������������������������� 0 frontappname frontAppName�� 0 
scriptname 
scriptName�� 0 	neworigin 	newOrigin�� 0 vertical  �� 0 
horizontal  �� 0 windowwidth windowWidth�� 0 windowheight windowHeight�� &0 originvaluestring originValueString�� 0 currentframe currentFrame�� 0 screenwidth screenWidth�� 0 screenheight screenHeight�� 0 xoffset xOffset�� 0 yoffset yOffset�� 0 	offsetset 	offsetSet�� 0 errormessage errorMessage�� 0 errornumber errorNumber /������������������������������������!.<>JRdq��������������	��� 20 getfrontapplicationname getFrontApplicationName�� 0 getscriptname getScriptName�� "0 parsescriptname parseScriptName
�� 
cobj
�� 
long�� 
�� 
bool
�� misccura�� 0 nsscreen NSScreen�� 0 
mainscreen 
mainScreen�� 0 visibleframe visibleFrame�� 0 min  
�� .sysodlogaskr        TEXT
�� 
ctxt������  ��  
�� 
capp
�� .miscactvnull��� ��� null
�� .SzUpRsiznull���     QDpt
�� .SzUpMvRsnull���     qdrt�� 0 errormessage errorMessage	 ������
�� 
errn�� 0 errornumber errorNumber��  ���*j+  E�O*j+ E�O*�k+ E�O��k/E�O��l/E�O��m/�&E�O���/�&E�O�%�%�%�%�%�%�%�%�%�%E�O�j	 �j�&���,�,j+ E�O��l/�k/E�O��l/�l/E�O*��l+ E�O*��l+ E�O�j 	 �j �& a �%a %j OhY hOjE�OjE�OfE�O 0�[a \[Zk\Za 2�&E�O�[a \[Zk\Za 2�&E�OeE�W X  hO� ��a   jE�Y D�a   �l!�l!E�Y 0�a   
��E�Y  �a   iE�Y a �%a %j OhO�a   jE�Y D�a    �l!�l!E�Y 0�a !  
��E�Y  �a "  iE�Y a #�%a $%j OhY hO*a %�/ 1*j &O�i  a ' 
��lvj (UY a ' �����vj )UUOPY a *�%a +%j OPW X , -a .j � ��
������
�� .aevtoappnull  �   � ****
 k      �����  ��  ��     ���� 0 main  �� *j+  ascr  ��ޭ