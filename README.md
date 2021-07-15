# DeepSentiBank-builder
Make the executable file (`extract_nfeatures`) for [DeepSentiBank](https://github.com/generalmilk/DeepSentiBank) in [Caffe](https://github.com/BVLC/caffe).

## Requirement
- [Docker](https://www.docker.com/)
  - docker-compose

## Usage
- Run `docker-compose build`.
- Run `docker-compose up -d`.
- Run `docker-compose exec builder bash`.
- Run `cp /opt/caffe/build/tools/extract_nfeatures .` in container.

You can get the executable file (`extract_nfeatures`) in source folder.

## Run in DeepSentiBank
Download `caffe_sentibank_train_iter_250000` file from [this url](https://www.dropbox.com/s/lv3p67m21kr3mrg/caffe_sentibank_train_iter_250000?dl=1).

Then, add `extract_nfeatures` and `caffe_sentibank_train_iter_250000` file to your [DeepSentiBank](https://github.com/generalmilk/DeepSentiBank) folder, and run `python sentiBank.py test_image.jpg`. 

You can get output json file: `test_image.json`.

## Note
(2020.01.24) Original `extract_nfeatures.cpp` in [DeepSentiBank](https://github.com/generalmilk/DeepSentiBank) contains a bug caused by [Caffe](https://github.com/BVLC/caffe) updates. (Look this [Issue](https://github.com/BVLC/caffe/issues/4107).)

So we use a modified file (`source/extract_nfeatures.cpp`) instead of the original one.


