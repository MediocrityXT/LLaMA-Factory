
cd /data/tianxia/A.TodoProject/LLaMA-Factory
# adapter会OOM
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval \
--model_name_or_path Qwen/Qwen-7B-Chat \
--adapter_name_or_path saves/Qwen-7B-Chat/lora/train_2024-12-25-13-13-00 \
--trust_remote_code true \
--finetuning_type lora \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Qwen-7B-Chat/lora/eval_mmlu \
--batch_size 1 \

CUDA_VISIBLE_DEVICES=1 llamafactory-cli eval \
--model_name_or_path Qwen/Qwen-7B-Chat \
--adapter_name_or_path saves/Qwen-7B-Chat/lora/train_2024-12-25-13-13-00 \
--finetuning_type lora \
--trust_remote_code true \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Qwen-7B-Chat/lora/eval_ceval \
--batch_size 1


CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval \
--model_name_or_path Qwen/Qwen-7B-Chat \
--trust_remote_code true \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Qwen-7B-Chat/vanilla/eval_mmlu \
--batch_size 1
# & \
# CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval \
# --model_name_or_path Qwen/Qwen-7B-Chat \
# --trust_remote_code true \
# --infer_dtype float16 \
# --task ceval_validation \
# --template fewshot \
# --lang en \
# --n_shot 5 \
# --save_dir saves/Qwen-7B-Chat/vanilla/eval_ceval \
# --batch_size 4