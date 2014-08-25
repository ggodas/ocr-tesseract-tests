echo 'Tratando imagem...'
./textcleaner -g -e stretch -f 15 -o 5 -s 1 IMG_5919.JPG cupom.tif

echo 'Corrigindo orientação da imagem'
convert -auto-orient cupom.tif cupom.tif 

echo 'Aumentando imagem para melhoria...'
convert -resize 200% cupom.tif cupom.tif 

echo 'Iniciando OCR da imagem'
tesseract -l por cupom.tif out
echo '--------------------------------------------------------'
echo 'Resultado'
echo '--------------------------------------------------------'

cat out.txt
echo '--------------------------------------------------------'

