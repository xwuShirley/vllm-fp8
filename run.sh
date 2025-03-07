
MODEL_PATH=/data/huggingface/models--meta-llama--Llama-3.2-11B-Vision-Instruct/snapshots/cee5b78e6faed15d5f2e6d8a654fd5b247c0d5ca
vllm serve ${MODEL_PATH} --port 7099 --tensor-parallel-size 2 \
--gpu_memory_utilization 0.95 --quantization=fp8 --max-num-seqs 10  \
--max-model-len 8000 