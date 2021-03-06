#!/bin/sh

#Different Weights inits
/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName weightsInitKaimingUniform --weight_init kaiming_uniform --iter_num 25000 --psnrDropGuard True --saveWeights True

# Comment-out less interesting tests
#/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName weightsInitNormal --weight_init normal --iter_num 25000 --psnrDropGuard True --saveWeights True

#/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName weightsInitConstant --weight_init constant --iter_num 25000 --psnrDropGuard True --saveWeights True

# Gradients noisening
/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedGradient_std01_MaxGrad --noise_grad True --iter_num 25000 --noise_grad_std 0.1 --gradNoiseStdScale max --psnrDropGuard True --saveWeights True

/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedGradient_std01AvgGrad --iter_num 25000 --noise_grad True --noise_grad_std 0.1 --gradNoiseStdScale mean --psnrDropGuard True --saveWeights True

/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedGradient_std005_MaxGrad --noise_grad True --iter_num 25000 --noise_grad_std 0.05 --gradNoiseStdScale max --psnrDropGuard True --saveWeights True

/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedGradient_std005AvgGrad --iter_num 25000 --noise_grad True --noise_grad_std 0.05 --gradNoiseStdScale mean --psnrDropGuard True --saveWeights True

# Weights noisening
/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedWeights_std01_MaxWeight --noise_weights True --noise_weights_std 0.1 --iter_num 25000 --weightNoiseStdScale max --psnrDropGuard True --saveWeights True

/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedWeights_std01_AvgWeight --noise_weights True --noise_weights_std 0.1 --iter_num 25000 --weightNoiseStdScale mean --psnrDropGuard True --saveWeights True

/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedWeights_std005_MaxWeight --noise_weights True --noise_weights_std 0.05 --iter_num 25000 --weightNoiseStdScale max --psnrDropGuard True --saveWeights True

/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName NoisedWeights_std005_AvgWeight --noise_weights True --noise_weights_std 0.05 --iter_num 25000 --weightNoiseStdScale mean --psnrDropGuard True

#Add noise to feature maps
/usr/bin/python3.5 /home/osherm/PycharmProjects/deep-image-prior/super-resolution.py --file_path data/sr/zebra_GT.png --simulationName FeatureMapsAddedNoise --iter_num 25000 --addRegNoiseToFeatureMaps True --psnrDropGuard True --saveWeights True

