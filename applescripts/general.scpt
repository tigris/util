FasdUAS 1.101.10   ��   ��    k             l     ��  ��    "  method to log a msg to file     � 	 	 8   m e t h o d   t o   l o g   a   m s g   t o   f i l e   
�� 
 i         I      �� ���� 0 	log_event     ��  o      ���� 0 msg  ��  ��    k     i       r         b         l    	 ����  I    	��  
�� .earsffdralis        afdr  m     ��
�� afdrdlib  ��  
�� 
from  m    ��
�� fldmfldu  �� ��
�� 
rtyp  m    ��
�� 
TEXT��  ��  ��    m   	 
   �   6 L o g s : A p p l e s c r i p t   E v e n t s . l o g  o      ���� 0 logfile logFile      l   ��   !��     d ^ how shit is this? unbelievable apple don't have some form of strftime or formatting for dates    ! � " " �   h o w   s h i t   i s   t h i s ?   u n b e l i e v a b l e   a p p l e   d o n ' t   h a v e   s o m e   f o r m   o f   s t r f t i m e   o r   f o r m a t t i n g   f o r   d a t e s   # $ # r     % & % l    '���� ' I   �� ( )
�� .sysoexecTEXT���     TEXT ( m     * * � + + 8 d a t e   + ' [ % Y - % m - % d   % H : % M : % S ]   ' ) �� ,��
�� 
rtyp , m    ��
�� 
TEXT��  ��  ��   & o      ���� 0 
datestring 
dateString $  -�� - Q    i . / 0 . k    C 1 1  2 3 2 r    ' 4 5 4 I   %�� 6 7
�� .rdwropenshor       file 6 4    �� 8
�� 
file 8 o    ���� 0 logfile logFile 7 �� 9��
�� 
perm 9 m     !��
�� boovtrue��   5 o      ���� 0 open_log   3  : ; : I  ( =�� < =
�� .rdwrwritnull���     **** < b   ( 1 > ? > b   ( + @ A @ o   ( )���� 0 
datestring 
dateString A o   ) *���� 0 msg   ? l  + 0 B���� B I  + 0�� C��
�� .sysontocTEXT       shor C m   + ,���� 
��  ��  ��   = �� D E
�� 
refn D o   2 3���� 0 open_log   E �� F��
�� 
wrat F m   6 9��
�� rdwreof ��   ;  G�� G I  > C�� H��
�� .rdwrclosnull���     **** H o   > ?���� 0 open_log  ��  ��   / R      �� I��
�� .ascrerr ****      � **** I o      ���� 0 e  ��   0 k   K i J J  K L K I  K T�� M��
�� .sysodlogaskr        TEXT M b   K P N O N m   K N P P � Q Q : E r r o r   w r i t i n g   t o   e v e n t s   l o g :   O o   N O���� 0 e  ��   L  R�� R Q   U i S T�� S I  X `�� U��
�� .rdwrclosnull���     **** U 4   X \�� V
�� 
file V o   Z [���� 0 logfile logFile��   T R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��       �� W X��   W ���� 0 	log_event   X �� ���� Y Z���� 0 	log_event  �� �� [��  [  ���� 0 msg  ��   Y ������������ 0 msg  �� 0 logfile logFile�� 0 
datestring 
dateString�� 0 open_log  �� 0 e   Z ��������������  *�������������������������� P����
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
�� .sysodlogaskr        TEXT��  �� j������ �%E�O���l 	E�O -*�/�el E�O��%�j %�a a � O�j W %X  a �%j O *�/j W X  hascr  ��ޭ