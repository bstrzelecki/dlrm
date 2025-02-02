#!bin/sh

# Running the quantized model
python3 --arch-sparse-feature-size=16 --arch-mlp-bot="13-512-256-64-16" --arch-mlp-top="512-256-1" --data-generation=dataset --data-set=kaggle --raw-data-file=./dataset/test.txt --loss-function=bce --inference-only --round-targets=True --learning-rate=0.1 --mini-batch-size=128 --print-freq=1024 --print-time --test-mini-batch-size=16384 --test-num-workers=16 --quantize-mlp-with-bit 8 --quantize-emb-with-bit 8 --load-model model/tb.pt 2>&1 | tee run_kaggle_pt.log
