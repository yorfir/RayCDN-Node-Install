#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�ƷZraycdnPlatformSet_CentOS7.sh �XmoG�~�b�+"��.8-HN�RZ!QZP+!���wG�nO�{��O�%�� ��"��!U$��!�c;ο���َ���������̳3�.pkq��<Yet֛?����D��q,����O(C'p*>�F�_���Ȏ�n��p�7���bk^."�>��0�x�����Ƌ����`�Y��������Z��j/�l�\����ַZ�t���^]A���rN� m�zо�ts����r����O�_��.��u#��g�؍��#l3�$N����ҹ������q����)���h&�c4��铧O�9�UU��iإ1�jn8�\,|�hs��qا�k��I�[�
��<qԉ� ̦T����C�������Ƿ[�-�AqʅG��Q���c����gX}���-����̜f87����q�!ľ�1���
��x���@Y�ɏ�1�c�Q�+ʮ<<�(Ӭ���;kk��W�/nJ���-�d����R)��y#��`;6Y�L*�q:���iM�A�Z���"�{�����=ߩ�
`x�����{	'pH���q�݀6RB���p�:�][M�1��P��5/���`���10���D��8\Cq��9sA�#.8~MiT���T��	��		��H{C_���+�}sY�{��3/�%�ߛ";�8r��)%4���!���5F����a�+��1�c0#	���I���{r���J �8u m���]7
)	vӰ9��;�(w�Q�������8��D�b�a=�[�ƥ}�9rę�p&����	��ClS��Zo�zm�h�)�ĕⶒw3N��V��尛su4���73/8���[�~��״�B�7Q7�ۏdLJ3��Φ#��W v�ُ�v�N� q�\�4�3���f4�v�����	�\�|ao�� -����������Y�`Xm�Ͱ�������*T����(�I Q-٤ȉ%X��cNT%T{H�'`�P�W��P�c��Ё*Ge���G/�����7!�Ȍ6\@�m��췳LQݷ�B��Z}�z�عyci�����������w��������l�ܮ{5d�/�;+ب�;k��q�����V�˾P�$4U�l��s�4ZPʡ���xf��T���y�b$N͛��6)K�:MGvf�H�DN����7�iP�1��}��`z�!<���u�R
�������dij�t�~�b1(Ob�u=/�"��K�dO6�V�*��������|�ߙ[�n�Y/|�	Fe)W���A��d��� �)SWfr��D"!�U�	�������ce�����C��(}�����`�W[:�1�Y��DQ5iEq�3���RxE4pI1�FU�a2O�Z�fe%���
l�yA��kJg��PF��´��|�s���9g�94���&���^1�<�6T�����Ā�Xv�{[�e��ovH��g�sF��)��G�ܗ^*p��|5ɉ�U12xz��*��e�w]9\�>_L�9�W����#�2�y�GsQL�'�2���};��0S�H?W[ϟ�n�����⁷�[��Aq�K_+?H5'$���'x6t$A�Jhʼ�/F�R��^;=dmW�j��*��FA���$)�!�<�j�E������S�W�r�[�C7t0�#���8M$a���`<��n�fd�Ul����t>�y,�����/�J��  