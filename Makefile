
build:
	docker build -t mvae .

mnist: build
	docker run --rm -it -v  /home/lya/mvae:/mvae mvae /bin/bash -c \
	"cd mnist; CUDA_VISIBLE_DEVICES=0 python train.py --lambda-text 50. --cuda"

mnist_sample:
	docker run --rm -it -v  /home/lya/mvae:/mvae mvae /bin/bash -c \
	"cd mnist; CUDA_VISIBLE_DEVICES=0 python sample.py ./trained_models/model_best.pth.tar --condition-on-text 9 --cuda"
