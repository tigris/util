FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  I    �� 
��
�� .sysoloadscpt        file 
 4     �� 
�� 
alis  l    ����  b        l    ����  I   ��  
�� .earsffdralis        afdr  m    ��
�� afdrdlib  ��  
�� 
from  m    ��
�� fldmfldu  �� ��
�� 
rtyp  m    ��
�� 
TEXT��  ��  ��    m       �   ( S c r i p t s : g e n e r a l . s c p t��  ��  ��   	 o      ���� 0 general General��  ��        l     ��������  ��  ��        l    ����  n        I    �� ���� 0 	log_event     ��  m         � ! ! . S t a r t i n g   p l a y l i s t   r e a d .��  ��    o    ���� 0 general General��  ��     " # " l     ��������  ��  ��   #  $ % $ l    &���� & r     ' ( ' m    ����   ( o      ���� 0 
tracksread 
tracksRead��  ��   %  ) * ) l    # +���� + r     # , - , m     !����   - o      ���� 0 tracksmatched tracksMatched��  ��   *  . / . l  $ ' 0���� 0 r   $ ' 1 2 1 m   $ %����   2 o      ���� 0 tracksmissing tracksMissing��  ��   /  3 4 3 l  ( - 5���� 5 r   ( - 6 7 6 m   ( )����   7 o      ���� $0 tracksduplicated tracksDuplicated��  ��   4  8 9 8 l  . 3 :���� : r   . 3 ; < ; m   . /����   < o      ���� 0 tracksignored tracksIgnored��  ��   9  = > = l  4 9 ?���� ? r   4 9 @ A @ m   4 5����   A o      ���� 0 tracksupdated tracksUpdated��  ��   >  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F 0 * ask user if they want real updates or not    G � H H T   a s k   u s e r   i f   t h e y   w a n t   r e a l   u p d a t e s   o r   n o t E  I J I l  : R K���� K I  : R�� L M
�� .sysodlogaskr        TEXT L m   : = N N � O O B D o   y o u   w a n t   t o   p e r f o r m   a   d r y   r u n ? M �� P Q
�� 
btns P J   @ H R R  S T S m   @ C U U � V V . N o ,   f u c k   i t ,   I ' m   r e a d y ! T  W�� W m   C F X X � Y Y , Y e s   p l e a s e ,   I ' m   s c a r e d��   Q �� Z��
�� 
dflt Z m   K N [ [ � \ \ , Y e s   p l e a s e ,   I ' m   s c a r e d��  ��  ��   J  ] ^ ] l  S b _���� _ r   S b ` a ` c   S ^ b c b n   S Z d e d 1   V Z��
�� 
bhit e 1   S V��
�� 
rslt c m   Z ]��
�� 
ctxt a o      ���� 0 dryrun dryRun��  ��   ^  f g f l  c z h���� h Z   c z i j�� k i =   c j l m l o   c f���� 0 dryrun dryRun m m   f i n n � o o , Y e s   p l e a s e ,   I ' m   s c a r e d j r   m r p q p m   m n��
�� boovtrue q o      ���� 0 dryrun dryRun��   k r   u z r s r m   u v��
�� boovfals s o      ���� 0 dryrun dryRun��  ��   g  t u t l  { � v���� v n   { � w x w I   | ��� y���� 0 	log_event   y  z�� z c   | � { | { b   | � } ~ } m   |    � � �  D r y   r u n   i s :   ~ o    ����� 0 dryrun dryRun | m   � ���
�� 
ctxt��  ��   x o   { |���� 0 general General��  ��   u  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � I  � �������
�� .misccurdldt    ��� null��  ��   � o      ���� 0 	starttime 	startTime��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  �? ����� � O   �? � � � k   �> � �  � � � l  � ��� � ���   �   find the iPod    � � � �    f i n d   t h e   i P o d �  � � � Y   � � ��� � ��� � Z   � � � ����� � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pKnd � 4   � ��� �
�� 
cSrc � o   � ����� 0 i  ��  ��   � m   � ���
�� eSrckPod � r   � � � � � c   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � 4   � ��� �
�� 
cSrc � o   � ����� 0 i  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 thepod thePod��  ��  �� 0 i   � m   � �����  � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � 2  � ���
�� 
cSrc��  ��  ��  ��   �  � � � l  � ��������  ��  �   �  � � � X   �� ��~ � � k   �� � �  � � � r   � � � � � [   � � � � � o   � ��}�} 0 
tracksread 
tracksRead � m   � ��|�|  � o      �{�{ 0 
tracksread 
tracksRead �  � � � r   � � � � n   � � � � � 1   � ��z
�z 
pAlb � o   � ��y�y 0 t   � o      �x�x 0 
trackalbum 
trackAlbum �  � � � r   � � � n   � � � 1  �w
�w 
pArt � o  �v�v 0 t   � o      �u�u 0 trackartist trackArtist �  � � � r   � � � n   � � � 1  �t
�t 
pnam � o  �s�s 0 t   � o      �r�r 0 
tracktitle 
trackTitle �  � � � r  R � � � l N ��q�p � 6 N � � � n  # � � � 2  #�o
�o 
cTrk � 4  �n �
�n 
cPly � m   � � � � �  L i b r a r y � F  &M � � � F  '@ � � � l (3 ��m�l � = (3 � � � 1  )-�k
�k 
pnam � o  .2�j�j 0 
tracktitle 
trackTitle�m  �l   � l 4? ��i�h � = 4? � � � 1  59�g
�g 
pArt � o  :>�f�f 0 trackartist trackArtist�i  �h   � l AL ��e�d � = AL � � � 1  BF�c
�c 
pAlb � o  GK�b�b 0 
trackalbum 
trackAlbum�e  �d  �q  �p   � o      �a�a 0 results   �  � � � l SS�`�_�^�`  �_  �^   �  � � � l SS�] � ��]   � ~ x huge search clause i know, but cos iTunes supports a "disc #" field and ID3 tags didn't 2 years ago, I have a butt load    � � � � �   h u g e   s e a r c h   c l a u s e   i   k n o w ,   b u t   c o s   i T u n e s   s u p p o r t s   a   " d i s c   # "   f i e l d   a n d   I D 3   t a g s   d i d n ' t   2   y e a r s   a g o ,   I   h a v e   a   b u t t   l o a d �  � � � l SS�\ � ��\   � | v of tracks that i've fixed on the ipod to group the album properly, but the ID3 tag (and hence new library) won't have    � � � � �   o f   t r a c k s   t h a t   i ' v e   f i x e d   o n   t h e   i p o d   t o   g r o u p   t h e   a l b u m   p r o p e r l y ,   b u t   t h e   I D 3   t a g   ( a n d   h e n c e   n e w   l i b r a r y )   w o n ' t   h a v e �  � � � Z  S � ��[�Z � =  S\ � � � n  SZ � � � 1  VZ�Y
�Y 
leng � o  SV�X�X 0 results   � m  Z[�W�W   � k  _ � �  � � � n  _{ � � � I  `{�V ��U�V 0 	log_event   �  ��T � b  `w � � � b  `s   b  `o b  `k b  `g m  `c �		 Z a t t e m p i n g   n e w   s e a r c h   w i t h   n o   ' d i s c '   i n f o   f o r   o  cf�S�S 0 trackartist trackArtist m  gj

 �    -   o  kn�R�R 0 
trackalbum 
trackAlbum m  or �    -   � o  sv�Q�Q 0 
tracktitle 
trackTitle�T  �U   � o  _`�P�P 0 general General � �O r  | l |�N�M 6 | n  |� 2  ���L
�L 
cTrk 4  |��K
�K 
cPly m  �� �  L i b r a r y F  � F  �� l ���J�I = �� 1  ���H
�H 
pnam o  ���G�G 0 
tracktitle 
trackTitle�J  �I   l �� �F�E  = ��!"! 1  ���D
�D 
pArt" o  ���C�C 0 trackartist trackArtist�F  �E   l �#�B�A# G  �$%$ G  ��&'& G  ��()( G  ��*+* G  ��,-, l ��.�@�?. = ��/0/ 1  ���>
�> 
pAlb0 l ��1�=�<1 b  ��232 o  ���;�; 0 
trackalbum 
trackAlbum3 m  ��44 �55    ( C D   1 )�=  �<  �@  �?  - l ��6�:�96 = ��787 1  ���8
�8 
pAlb8 l ��9�7�69 b  ��:;: o  ���5�5 0 
trackalbum 
trackAlbum; m  ��<< �==    ( C D   2 )�7  �6  �:  �9  + l ��>�4�3> = ��?@? 1  ���2
�2 
pAlb@ l ��A�1�0A b  ��BCB o  ���/�/ 0 
trackalbum 
trackAlbumC m  ��DD �EE    ( C D 1 )�1  �0  �4  �3  ) l ��F�.�-F = ��GHG 1  ���,
�, 
pAlbH l ��I�+�*I b  ��JKJ o  ���)�) 0 
trackalbum 
trackAlbumK m  ��LL �MM    ( C D 2 )�+  �*  �.  �-  ' l ��N�(�'N = ��OPO 1  ���&
�& 
pAlbP l ��Q�%�$Q b  ��RSR o  ���#�# 0 
trackalbum 
trackAlbumS m  ��TT �UU    ( d i s c   1 )�%  �$  �(  �'  % l �V�"�!V = �WXW 1   � 
�  
pAlbX l Y��Y b  Z[Z o  	�� 0 
trackalbum 
trackAlbum[ m  	\\ �]]    ( d i s c   2 )�  �  �"  �!  �B  �A  �N  �M   o      �� 0 results  �O  �[  �Z   � ^_^ l ����  �  �  _ `a` l �bc�  b ~ x it's entirely possible that (for artist grouping) on the ipod i moved any (featuring) info to the song title instead of   c �dd �   i t ' s   e n t i r e l y   p o s s i b l e   t h a t   ( f o r   a r t i s t   g r o u p i n g )   o n   t h e   i p o d   i   m o v e d   a n y   ( f e a t u r i n g )   i n f o   t o   t h e   s o n g   t i t l e   i n s t e a d   o fa efe l �gh�  g   in the artist name   h �ii &   i n   t h e   a r t i s t   n a m ef jkj Z  �lm��l =  #non n  !pqp 1  !�
� 
lengq o  �� 0 results  o m  !"��  m k  &�rr sts n  &Buvu I  'B�w�� 0 	log_event  w x�x b  '>yzy b  ':{|{ b  '6}~} b  '2� b  '.��� m  '*�� ��� d a t t e m p i n g   n e w   s e a r c h   w i t h   n o   ' f e a t u r i n g '   i n f o   f o r  � o  *-�� 0 trackartist trackArtist� m  .1�� ���    -  ~ o  25�� 0 
trackalbum 
trackAlbum| m  69�� ���    -  z o  :=�� 0 
tracktitle 
trackTitle�  �  v o  &'�� 0 general Generalt ��� r  CX��� I CT�
�	�
�
 .sysooffslong    ��� null�	  � ���
� 
psof� m  GJ�� ���  ( F e a t u r i n g� ���
� 
psin� o  MP�� 0 
tracktitle 
trackTitle�  � o      �� 0 x  � ��� Z  Y������ ?  Y^��� o  Y\� �  0 x  � m  \]����  � k  a��� ��� r  a���� b  a~��� o  ad���� 0 trackartist trackArtist� l d}������ n  d}��� 7 g}����
�� 
ctxt� l ms������ \  ms��� o  nq���� 0 x  � m  qr���� ��  ��  � l t|������ n  t|��� 1  x|��
�� 
leng� o  tx���� 0 
tracktitle 
trackTitle��  ��  � o  dg���� 0 
tracktitle 
trackTitle��  ��  � o      ����  0 newtrackartist newTrackArtist� ��� r  ����� l �������� n  ����� 7 ������
�� 
ctxt� m  ������ � l �������� \  ����� o  ������ 0 x  � m  ������ ��  ��  � o  ������ 0 
tracktitle 
trackTitle��  ��  � o      ���� 0 newtracktitle newTrackTitle� ���� r  ����� l �������� 6 ����� n  ����� 2  ����
�� 
cTrk� 4  �����
�� 
cPly� m  ���� ���  L i b r a r y� F  ����� F  ����� l �������� = ����� 1  ����
�� 
pnam� o  ������ 0 newtracktitle newTrackTitle��  ��  � l �������� = ����� 1  ����
�� 
pArt� o  ������  0 newtrackartist newTrackArtist��  ��  � l �������� = ����� 1  ����
�� 
pAlb� o  ������ 0 
trackalbum 
trackAlbum��  ��  ��  ��  � o      ���� 0 results  ��  �  �  �  �  �  k ��� l ����������  ��  ��  � ��� l ��������  � V P chuck "The" in front of the artist, there's a chance I removed it at some stage   � ��� �   c h u c k   " T h e "   i n   f r o n t   o f   t h e   a r t i s t ,   t h e r e ' s   a   c h a n c e   I   r e m o v e d   i t   a t   s o m e   s t a g e� ��� Z  �6������� =  ����� n  ����� 1  ����
�� 
leng� o  ������ 0 results  � m  ������  � k  �2�� ��� r  ����� b  ����� m  ���� ���  T h e  � o  ������ 0 trackartist trackArtist� o      ����  0 newtrackartist newTrackArtist� ���� r  �2��� l �.������ 6 �.��� n  ���� 2  ���
�� 
cTrk� 4  �����
�� 
cPly� m  ���� ���  L i b r a r y� F  -��� F   ��� l ������ = ��� 1  	��
�� 
pnam� o  ���� 0 
tracktitle 
trackTitle��  ��  � l ������ = ��� 1  ��
�� 
pArt� o  ����  0 newtrackartist newTrackArtist��  ��  � l !,������ = !,��� 1  "&��
�� 
pAlb� o  '+���� 0 
trackalbum 
trackAlbum��  ��  ��  ��  � o      ���� 0 results  ��  ��  ��  � ��� l 77��������  ��  ��  �    l 77����   E ? if there are multiple, then we drill into bitrate and time too    � ~   i f   t h e r e   a r e   m u l t i p l e ,   t h e n   w e   d r i l l   i n t o   b i t r a t e   a n d   t i m e   t o o  Z  7����� ?  7@	
	 n  7> 1  :>��
�� 
leng o  7:���� 0 results  
 m  >?����  k  C�  r  CL n  CH 1  DH��
�� 
pBRt o  CD���� 0 t   o      ���� 0 trackbitrate trackBitrate  n  Mi I  Ni������ 0 	log_event   �� b  Ne b  Na b  N] b  NY !  b  NU"#" m  NQ$$ �%% : a d d i n g   b i t r a t e   t o   s e a r c h   f o r  # o  QT���� 0 trackartist trackArtist! m  UX&& �''    -   o  Y\���� 0 
trackalbum 
trackAlbum m  ]`(( �))    -   o  ad���� 0 
tracktitle 
trackTitle��  ��   o  MN���� 0 general General *��* r  j�+,+ l j�-����- 6 j�./. n  jv010 2  rv��
�� 
cTrk1 4  jr��2
�� 
cPly2 m  nq33 �44  L i b r a r y/ F  y�565 F  z�787 F  {�9:9 l |�;����; = |�<=< 1  }���
�� 
pnam= o  ������ 0 
tracktitle 
trackTitle��  ��  : l ��>����> = ��?@? 1  ����
�� 
pArt@ o  ������ 0 trackartist trackArtist��  ��  8 l ��A����A = ��BCB 1  ����
�� 
pAlbC o  ������ 0 
trackalbum 
trackAlbum��  ��  6 l ��D����D = ��EFE 1  ����
�� 
pBRtF o  ������ 0 trackbitrate trackBitrate��  ��  ��  ��  , o      ���� 0 results  ��  ��  ��   GHG l ����������  ��  ��  H I��I Z  ��JKLMJ =  ��NON n  ��PQP 1  ����
�� 
lengQ o  ������ 0 results  O m  ������  K k  ��RR STS n  ��UVU I  ����W���� 0 	log_event  W X��X b  ��YZY b  ��[\[ b  ��]^] b  ��_`_ b  ��aba m  ��cc �dd  n o   m a t c h e s   f o r  b o  ������ 0 trackartist trackArtist` m  ��ee �ff    -  ^ o  ������ 0 
trackalbum 
trackAlbum\ m  ��gg �hh    -  Z o  ������ 0 
tracktitle 
trackTitle��  ��  V o  ������ 0 general GeneralT iji I ����kl
�� .coreclon****      � ****k o  ���� 0 t  l �~m�}
�~ 
inshm n ��non 4  ���|p
�| 
cUsPp m  ��qq �rr  n o   m a t c ho 4  ���{s
�{ 
cSrcs o  ���z�z 0 thepod thePod�}  j t�yt r  ��uvu [  ��wxw o  ���x�x 0 tracksmissing tracksMissingx m  ���w�w v o      �v�v 0 tracksmissing tracksMissing�y  L yzy ?  
{|{ n  }~} 1  �u
�u 
leng~ o  �t�t 0 results  | m  	�s�s z �r k  f�� ��� n  )��� I  )�q��p�q 0 	log_event  � ��o� b  %��� b  !��� b  ��� b  ��� b  ��� m  �� ��� * m u l t i p l e   m a t c h e s   f o r  � o  �n�n 0 trackartist trackArtist� m  �� ���    -  � o  �m�m 0 
trackalbum 
trackAlbum� m   �� ���    -  � o  !$�l�l 0 
tracktitle 
trackTitle�o  �p  � o  �k�k 0 general General� ��� X  *\��j�� I @W�i��
�i .coreclon****      � ****� o  @A�h�h 0 x  � �g��f
�g 
insh� n DS��� 4  LS�e�
�e 
cUsP� m  OR�� ���  d u p l i c a t e s� 4  DL�d�
�d 
cSrc� o  HK�c�c 0 thepod thePod�f  �j 0 x  � o  -0�b�b 0 results  � ��a� r  ]f��� [  ]b��� o  ]`�`�` $0 tracksduplicated tracksDuplicated� m  `a�_�_ � o      �^�^ $0 tracksduplicated tracksDuplicated�a  �r  M k  i��� ��� r  in��� [  il��� o  ij�]�] 0 tracksmatched tracksMatched� m  jk�\�\ � o      �[�[ 0 tracksmatched tracksMatched� ��� r  oy��� n  ow��� 4  rw�Z�
�Z 
cobj� m  uv�Y�Y � o  or�X�X 0 results  � o      �W�W 0 x  � ��V� Z  z����U�� F  z���� @  z���� n  z��� 1  {�T
�T 
pPlC� o  z{�S�S 0 x  � n  ���� 1  ���R
�R 
pPlC� o  ��Q�Q 0 t  � @  ����� n  ����� 1  ���P
�P 
pSkC� o  ���O�O 0 x  � n  ����� 1  ���N
�N 
pSkC� o  ���M�M 0 t  � k  ���� ��� n  ����� I  ���L��K�L 0 	log_event  � ��J� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� H a l r e a d y   a t   c o r r e c t   p l a y e d   c o u n t   f o r  � o  ���I�I 0 trackartist trackArtist� m  ���� ���    -  � o  ���H�H 0 
trackalbum 
trackAlbum� m  ���� ���    -  � o  ���G�G 0 
tracktitle 
trackTitle�J  �K  � o  ���F�F 0 general General� ��� I ���E��
�E .coreclon****      � ****� o  ���D�D 0 t  � �C��B
�C 
insh� n ����� 4  ���A�
�A 
cUsP� m  ���� ��� , w a s   a l r e a d y   u p   t o   d a t e� 4  ���@�
�@ 
cSrc� o  ���?�? 0 thepod thePod�B  � ��>� r  ����� [  ����� o  ���=�= 0 tracksignored tracksIgnored� m  ���<�< � o      �;�; 0 tracksignored tracksIgnored�>  �U  � k  ���� ��� Z  �����:�� o  ���9�9 0 dryrun dryRun� k  �)�� ��� I ���8��
�8 .coreclon****      � ****� o  ���7�7 0 t  � �6��5
�6 
insh� n ����� 4  ���4�
�4 
cUsP� m  ���� �    r e q u i r e s   u p d a t e� 4  ���3
�3 
cSrc o  ���2�2 0 thepod thePod�5  � �1 n  �) I  �)�0�/�0 0 	log_event   �. b  �% b  �	
	 b  � b  � b  � b  � b  �	 b  � b  � m  �� � : c o u l d   h a v e   u p d a t e d   c o u n t   f o r   o  � �-�- 0 trackartist trackArtist m   �    -   o  �,�, 0 
trackalbum 
trackAlbum m  	 �    -   o  �+�+ 0 
tracktitle 
trackTitle m   �      f r o m   n  !"! 1  �*
�* 
pPlC" o  �)�) 0 x  
 m  ## �$$    t o   n  $%&% 1   $�(
�( 
pPlC& o   �'�' 0 t  �.  �/   o  ���&�& 0 general General�1  �:  � k  ,�'' ()( I ,C�%*+
�% .coreclon****      � ***** o  ,-�$�$ 0 t  + �#,�"
�# 
insh, n 0?-.- 4  8?�!/
�! 
cUsP/ m  ;>00 �11  u p d a t e d. 4  08� 2
�  
cSrc2 o  47�� 0 thepod thePod�"  ) 343 n  Dt565 I  Et�7�� 0 	log_event  7 8�8 b  Ep9:9 b  Ej;<; b  Ef=>= b  E`?@? b  E\ABA b  EXCDC b  ETEFE b  EPGHG b  ELIJI m  EHKK �LL $ u p d a t e d   c o u n t   f o r  J o  HK�� 0 trackartist trackArtistH m  LOMM �NN    -  F o  PS�� 0 
trackalbum 
trackAlbumD m  TWOO �PP    -  B o  X[�� 0 
tracktitle 
trackTitle@ m  \_QQ �RR    f r o m  > n  `eSTS 1  ae�
� 
pPlCT o  `a�� 0 x  < m  fiUU �VV    t o  : n  joWXW 1  ko�
� 
pPlCX o  jk�� 0 t  �  �  6 o  DE�� 0 general General4 YZY l uu����  �  �  Z [\[ r  u~]^] n  uz_`_ 1  vz�
� 
pPlC` o  uv�� 0 t  ^ o      �� 0 newcount newCount\ aba r  �cdc n  �efe 1  ���
� 
pPlDf o  ��� 0 t  d o      �� 0 newdate newDateb ghg Z  ��ij�
�	i ?  ��klk o  ���� 0 newcount newCountl m  ����  j k  ��mm non r  ��pqp o  ���� 0 newcount newCountq n      rsr 1  ���
� 
pPlCs o  ���� 0 x  o t�t r  ��uvu o  ���� 0 newdate newDatev n      wxw 1  ���
� 
pPlDx o  ��� �  0 x  �  �
  �	  h yzy l ����������  ��  ��  z {|{ r  ��}~} n  ��� 1  ����
�� 
pSkC� o  ������ 0 t  ~ o      ���� 0 newcount newCount| ��� r  ����� n  ����� 1  ����
�� 
pSkD� o  ������ 0 t  � o      ���� 0 newdate newDate� ���� Z  ��������� ?  ����� o  ������ 0 newcount newCount� m  ������  � k  ���� ��� r  ����� o  ������ 0 newcount newCount� n      ��� 1  ����
�� 
pSkC� o  ������ 0 x  � ���� r  ����� o  ������ 0 newdate newDate� n      ��� 1  ����
�� 
pSkD� o  ������ 0 x  ��  ��  ��  ��  � ���� r  ����� [  ����� o  ������ 0 tracksupdated tracksUpdated� m  ������ � o      ���� 0 tracksupdated tracksUpdated��  �V  ��  �~ 0 t   � 1   � ���
�� 
sele � ��� l ����������  ��  ��  � ��� n  ����� I  ��������� 0 	log_event  � ���� m  ���� ��� " P a r s i n g   c o m p l e t e .��  ��  � o  ������ 0 general General� ��� n  ����� I  ��������� 0 	log_event  � ���� b  ����� m  ���� ���  T r a c k s   r e a d :  � o  ������ 0 
tracksread 
tracksRead��  ��  � o  ������ 0 general General� ��� n   
��� I  
������� 0 	log_event  � ���� b  ��� m  �� ���   T r a c k s   m a t c h e d :  � o  ���� 0 tracksmatched tracksMatched��  ��  � o   ���� 0 general General� ��� n  ��� I  ������� 0 	log_event  � ���� b  ��� m  �� ���   T r a c k s   m i s s i n g :  � o  ���� 0 tracksmissing tracksMissing��  ��  � o  ���� 0 general General� ��� n  "��� I  "������� 0 	log_event  � ���� b  ��� m  �� ��� & T r a c k s   d u p l i c a t e d :  � o  ���� $0 tracksduplicated tracksDuplicated��  ��  � o  ���� 0 general General� ��� n  #/��� I  $/������� 0 	log_event  � ���� b  $+��� m  $'�� ���   T r a c k s   i g n o r e d :  � o  '*���� 0 tracksignored tracksIgnored��  ��  � o  #$���� 0 general General� ��� n  0<��� I  1<������� 0 	log_event  � ���� b  18��� m  14�� ���   T r a c k s   u p d a t e d :  � o  47���� 0 tracksupdated tracksUpdated��  ��  � o  01���� 0 general General� ���� l ==��������  ��  ��  ��   � m   � ����                                                                                  hook   alis    L  Macintosh HD               �Y$�H+     
iTunes.app                                                      ;��X��        ����  	                Applications    �X�5      �Xh         $Macintosh HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  ��  ��  ��       "�����������������������������������������������������������  �  ����������������������������������������������������������������
�� .aevtoappnull  �   � ****�� 0 general General�� 0 
tracksread 
tracksRead�� 0 tracksmatched tracksMatched�� 0 tracksmissing tracksMissing�� $0 tracksduplicated tracksDuplicated�� 0 tracksignored tracksIgnored�� 0 tracksupdated tracksUpdated�� 0 dryrun dryRun�� 0 	starttime 	startTime�� 0 thepod thePod�� 0 
trackalbum 
trackAlbum�� 0 trackartist trackArtist�� 0 
tracktitle 
trackTitle�� 0 results  �� 0 x  ��  0 newtrackartist newTrackArtist�� 0 trackbitrate trackBitrate�� 0 newtracktitle newTrackTitle�� 0 newcount newCount�� 0 newdate newDate��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � �����������
�� .aevtoappnull  �   � ****� k    ?��  ��  ��  $��  )��  .��  3��  8��  =��  I��  ]��  f��  t��  �    �����  ��  ��  � ����~�� 0 i  � 0 t  �~ 0 x  � }�}�|�{�z�y�x�w�v �u�t  �s�r�q�p�o�n�m N�l U X�k [�j�i�h�g�f n �e�d��c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U ��T�S�R
4<DLT\����Q��P�O�N�M�L����K�J$&(3ceg�I�Hq�G�����F�E�D�����#0KMOQU�C�B�A�@�������
�} 
alis
�| afdrdlib
�{ 
from
�z fldmfldu
�y 
rtyp
�x 
TEXT�w 
�v .earsffdralis        afdr
�u .sysoloadscpt        file�t 0 general General�s 0 	log_event  �r 0 
tracksread 
tracksRead�q 0 tracksmatched tracksMatched�p 0 tracksmissing tracksMissing�o $0 tracksduplicated tracksDuplicated�n 0 tracksignored tracksIgnored�m 0 tracksupdated tracksUpdated
�l 
btns
�k 
dflt
�j .sysodlogaskr        TEXT
�i 
rslt
�h 
bhit
�g 
ctxt�f 0 dryrun dryRun
�e .misccurdldt    ��� null�d 0 	starttime 	startTime
�c 
cSrc
�b .corecnte****       ****
�a 
pKnd
�` eSrckPod
�_ 
pnam�^ 0 thepod thePod
�] 
sele
�\ 
kocl
�[ 
cobj
�Z 
pAlb�Y 0 
trackalbum 
trackAlbum
�X 
pArt�W 0 trackartist trackArtist�V 0 
tracktitle 
trackTitle
�U 
cPly
�T 
cTrk  �S 0 results  
�R 
leng
�Q 
psof
�P 
psin
�O .sysooffslong    ��� null�N 0 x  �M  0 newtrackartist newTrackArtist�L 0 newtracktitle newTrackTitle
�K 
pBRt�J 0 trackbitrate trackBitrate
�I 
insh
�H 
cUsP
�G .coreclon****      � ****
�F 
pPlC
�E 
pSkC
�D 
bool�C 0 newcount newCount
�B 
pPlD�A 0 newdate newDate
�@ 
pSkD��@*������� �%/j 	E�O��k+ OjE�OjE�OjE�OjE` OjE` OjE` Oa a a a lva a � O_ a ,a &E` O_ a   
eE` Y fE` O�a _ %a &k+ O*j  E` !Oa "� =k*a #-j $kh  *a #�/a %,a &  *a #�/a ',a &E` (Y h[OY��O*a ),[a *a +l $kh �kE�O�a ,,E` -O�a .,E` /O�a ',E` 0O*a 1a 2/a 3-a 4[[[a ',\Z_ 08\[a .,\Z_ /8A\[a ,,\Z_ -8A1E` 5O_ 5a 6,j  ��a 7_ /%a 8%_ -%a 9%_ 0%k+ O*a 1a :/a 3-a 4[[[a ',\Z_ 08\[a .,\Z_ /8A\[[[[[[a ,,\Z_ -a ;%8\[a ,,\Z_ -a <%8B\[a ,,\Z_ -a =%8B\[a ,,\Z_ -a >%8B\[a ,,\Z_ -a ?%8B\[a ,,\Z_ -a @%8BA1E` 5Y hO_ 5a 6,j  ��a A_ /%a B%_ -%a C%_ 0%k+ O*a Da Ea F_ 0� GE` HO_ Hj z_ /_ 0[a \[Z_ Hk\Z_ 0a 6,2%E` IO_ 0[a \[Zk\Z_ Hk2E` JO*a 1a K/a 3-a 4[[[a ',\Z_ J8\[a .,\Z_ I8A\[a ,,\Z_ -8A1E` 5Y hY hO_ 5a 6,j  La L_ /%E` IO*a 1a M/a 3-a 4[[[a ',\Z_ 08\[a .,\Z_ I8A\[a ,,\Z_ -8A1E` 5Y hO_ 5a 6,k u�a N,E` OO�a P_ /%a Q%_ -%a R%_ 0%k+ O*a 1a S/a 3-a 4[[[[a ',\Z_ 08\[a .,\Z_ /8A\[a ,,\Z_ -8A\[a N,\Z_ O8A1E` 5Y hO_ 5a 6,j  ?�a T_ /%a U%_ -%a V%_ 0%k+ O�a W*a #_ (/a Xa Y/l ZO�kE�Y�_ 5a 6,k ^�a [_ /%a \%_ -%a ]%_ 0%k+ O 1_ 5[a *a +l $kh �a W*a #_ (/a Xa ^/l Z[OY��O_ kE` Y�kE�O_ 5a +k/E�O�a _,�a _,	 �a `,�a `,a a& C�a b_ /%a c%_ -%a d%_ 0%k+ O�a W*a #_ (/a Xa e/l ZO_ kE` Y_  M�a W*a #_ (/a Xa f/l ZO�a g_ /%a h%_ -%a i%_ 0%a j%�a _,%a k%�a _,%k+ Y ��a W*a #_ (/a Xa l/l ZO�a m_ /%a n%_ -%a o%_ 0%a p%�a _,%a q%�a _,%k+ O�a _,E` rO�a s,E` tO_ rj _ r�a _,FO_ t�a s,FY hO�a `,E` rO�a u,E` tO_ rj _ r�a `,FO_ t�a u,FY hO_ kE` [OY�O�a vk+ O�a w�%k+ O�a x�%k+ O�a y�%k+ O�a z_ %k+ O�a {_ %k+ O�a |_ %k+ OPU� �? �?   k        l     �>�>   "  method to log a msg to file    �		 8   m e t h o d   t o   l o g   a   m s g   t o   f i l e 
�=
 i      I      �<�;�< 0 	log_event   �: o      �9�9 0 msg  �:  �;   k     i  r      b      l    	�8�7 I    	�6
�6 .earsffdralis        afdr m     �5
�5 afdrdlib �4
�4 
from m    �3
�3 fldmfldu �2�1
�2 
rtyp m    �0
�0 
TEXT�1  �8  �7   m   	 
 � 6 L o g s : A p p l e s c r i p t   E v e n t s . l o g o      �/�/ 0 logfile logFile  l   �. !�.    d ^ how shit is this? unbelievable apple don't have some form of strftime or formatting for dates   ! �"" �   h o w   s h i t   i s   t h i s ?   u n b e l i e v a b l e   a p p l e   d o n ' t   h a v e   s o m e   f o r m   o f   s t r f t i m e   o r   f o r m a t t i n g   f o r   d a t e s #$# r    %&% l   '�-�,' I   �+()
�+ .sysoexecTEXT���     TEXT( m    ** �++ 8 d a t e   + ' [ % Y - % m - % d   % H : % M : % S ]   ') �*,�)
�* 
rtyp, m    �(
�( 
TEXT�)  �-  �,  & o      �'�' 0 
datestring 
dateString$ -�&- Q    i./0. k    C11 232 r    '454 I   %�%67
�% .rdwropenshor       file6 4    �$8
�$ 
file8 o    �#�# 0 logfile logFile7 �"9�!
�" 
perm9 m     !� 
�  boovtrue�!  5 o      �� 0 open_log  3 :;: I  ( =�<=
� .rdwrwritnull���     ****< b   ( 1>?> b   ( +@A@ o   ( )�� 0 
datestring 
dateStringA o   ) *�� 0 msg  ? l  + 0B��B I  + 0�C�
� .sysontocTEXT       shorC m   + ,�� 
�  �  �  = �DE
� 
refnD o   2 3�� 0 open_log  E �F�
� 
wratF m   6 9�
� rdwreof �  ; G�G I  > C�H�
� .rdwrclosnull���     ****H o   > ?�� 0 open_log  �  �  / R      �I�
� .ascrerr ****      � ****I o      �� 0 e  �  0 k   K iJJ KLK I  K T�
M�	
�
 .sysodlogaskr        TEXTM b   K PNON m   K NPP �QQ : E r r o r   w r i t i n g   t o   e v e n t s   l o g :  O o   N O�� 0 e  �	  L R�R Q   U iST�S I  X `�U�
� .rdwrclosnull���     ****U 4   X \�V
� 
fileV o   Z [�� 0 logfile logFile�  T R      �� ��
� .ascrerr ****      � ****�   ��  �  �  �&  �=   ��WX��  W ���� 0 	log_event  X ������YZ���� 0 	log_event  �� ��[�� [  ���� 0 msg  ��  Y ������������ 0 msg  �� 0 logfile logFile�� 0 
datestring 
dateString�� 0 open_log  �� 0 e  Z ��������������*��������������������������P����
�� afdrdlib
�� 
from
�� fldmfldu
�� 
rtyp
�� 
TEXT�� 
�� .earsffdralis        afdr
�� .sysoexecTEXT���     TEXT
�� 
file
�� 
perm
�� .rdwropenshor       file�� 

�� .sysontocTEXT       shor
�� 
refn
�� 
wrat
�� rdwreof 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 e  ��  
�� .sysodlogaskr        TEXT��  �� j������ �%E�O���l 	E�O -*�/�el E�O��%�j %�a a � O�j W %X  a �%j O *�/j W X  h�� �� ��  ��  ��  �� 
�� boovfals� ldt     ��2%� �\\ " T h e   p o d   o f   T i g r i s� �]]  W h a t e v e r� �^^  G u i d o   H a t z i s� �__  P i n k   P o n c h o s   2� ��`�� `  aa bb c������c d������d �������
�� 
cSrc�� (
�� kfrmID  
�� 
cLiP��   ��
�� kfrmID  
�� 
cFlT��   �
�� kfrmID  ��  � �ee   T h e   G u i d o   H a t z i s�� �� �ff  G h e t t o   G o s p e l  ��  
�� 
msng��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ