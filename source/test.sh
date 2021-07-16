#!/bin/sh

# test output file in DeepSentiBank

if [ ! -e "DeepSentiBank" ]; then
    echo "\n**************** Downloading DeepSentiBank ****************"
    git clone --depth 1 https://github.com/generalmilk/DeepSentiBank
fi
rm DeepSentiBank/extract_nfeatures
cp extract_nfeatures DeepSentiBank/
cd DeepSentiBank/
if [ ! -e "caffe_sentibank_train_iter_250000" ]; then
    echo "\n**************** Downloading sentibank trained model ****************"
    wget https://www.dropbox.com/s/lv3p67m21kr3mrg/caffe_sentibank_train_iter_250000
fi
echo "\n**************** Running sentiBank.py ****************"
python sentiBank.py test_image.jpg

echo "\n** test_image.json created in source/DeepSentiBank!! **"