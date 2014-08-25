echo 'Tratando imagem...'

#convert foto.JPG   -morphology Erode Octagon  cupom.tif

./textcleaner -g -e stretch -f 25 -o 10 -u -s 1 -T -p 10 foto5.JPG cupom.tif

echo 'Corrigindo orientação da imagem'
convert -auto-orient cupom.tif cupom.tif 

echo 'Aumentando imagem para melhoria...'
convert -resize 5000x5000 cupom.tif cupom.tif 

echo 'Iniciando OCR da imagem'
tesseract -l eng cupom.tif out
echo '--------------------------------------------------------'
echo 'Resultado'
echo '--------------------------------------------------------'

cat out.txt
echo '--------------------------------------------------------'

