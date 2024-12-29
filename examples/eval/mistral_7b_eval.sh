
cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=2 llamafactory-cli eval \
--model_name_or_path mistralai/Mistral-7B-Instruct-v0.2 \
--adapter_name_or_path saves/Mistral-7B-Instruct-v0.2/lora/train_2024-12-26-21-21-08 \
--trust_remote_code true \
--finetuning_type lora \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Mistral-7B-Instruct-v0.2/lora/eval_mmlu \
--batch_size 1 \
& \
CUDA_VISIBLE_DEVICES=1 llamafactory-cli eval \
--model_name_or_path mistralai/Mistral-7B-Instruct-v0.2 \
--adapter_name_or_path saves/Mistral-7B-Instruct-v0.2/lora/train_2024-12-26-21-21-08 \
--finetuning_type lora \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Mistral-7B-Instruct-v0.2/lora/eval_ceval \
--batch_size 1


CUDA_VISIBLE_DEVICES=2 llamafactory-cli eval \
--model_name_or_path mistralai/Mistral-7B-Instruct-v0.2 \
--trust_remote_code true \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Mistral-7B-Instruct-v0.2/vanilla/eval_mmlu \
--batch_size 2\
& \
CUDA_VISIBLE_DEVICES=1 llamafactory-cli eval \
--model_name_or_path mistralai/Mistral-7B-Instruct-v0.2 \
--trust_remote_code true \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Mistral-7B-Instruct-v0.2/vanilla/eval_ceval \
--batch_size 4