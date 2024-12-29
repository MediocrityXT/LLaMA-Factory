
cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=1 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-3.2-1B-Instruct \
--trust_remote_code true \
--infer_dtype float16 \
--task mmlu_test \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-3.2-1B-Instruct/vanilla/eval_mmlu \
--batch_size 5


cd /data/tianxia/A.TodoProject/LLaMA-Factory
CUDA_VISIBLE_DEVICES=1 llamafactory-cli eval \
--model_name_or_path meta-llama/Llama-3.2-1B-Instruct \
--trust_remote_code true \
--infer_dtype float16 \
--task ceval_validation \
--template fewshot \
--lang en \
--n_shot 5 \
--save_dir saves/Llama-3.2-1B-Instruct/vanilla/eval_ceval \
--batch_size 15