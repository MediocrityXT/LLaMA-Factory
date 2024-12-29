
cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=3,4 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-2-7b-chat-hf \
--adapter_name_or_path saves/Llama-2-7B-Chat/lora/train_2024-12-25-05-04-00 \
--trust_remote_code true \
--finetuning_type lora \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-2-7B-Chat/lora/eval_mmlu \
--batch_size 2


cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=5,6 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-2-7b-chat-hf \
--adapter_name_or_path saves/Llama-2-7B-Chat/lora/train_2024-12-25-05-04-00 \
--finetuning_type lora \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-2-7B-Chat/lora/eval_ceval \
--batch_size 4

cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=7 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-2-7b-chat-hf \
--trust_remote_code true \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-2-7B-Chat/vanilla/eval_mmlu \
--batch_size 2

CUDA_VISIBLE_DEVICES=1,2 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-2-7b-chat-hf \
--trust_remote_code true \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-2-7B-Chat/vanilla/eval_ceval \
--batch_size 4