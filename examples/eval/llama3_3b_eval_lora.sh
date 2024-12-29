
cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=5 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-3.2-3B-Instruct \
--adapter_name_or_path saves/Llama-3.2-3B-Instruct/lora/train_2024-12-26-12-34-47 \
--trust_remote_code true \
--finetuning_type lora \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-3.2-3B-Instruct/lora/eval_mmlu \
--batch_size 5


cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=6 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-3.2-3B-Instruct \
--adapter_name_or_path saves/Llama-3.2-3B-Instruct/lora/train_2024-12-26-12-34-47 \
--trust_remote_code true \
--finetuning_type lora \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-3.2-3B-Instruct/lora/eval_ceval \
--batch_size 15