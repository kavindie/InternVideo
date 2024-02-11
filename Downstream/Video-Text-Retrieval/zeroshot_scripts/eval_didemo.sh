# srun -p video --gres=gpu:1 --cpus-per-task=16 --quotatype=spot -N1 --job-name=zs_didemo \
python -u -m main_task_retrieval \
    --do_eval \
    --num_thread_reader=8 \
    --n_display=50 \
    --epochs=5 \
    --lr=1e-3 \
    --coef_lr=5e-3 \
    --batch_size=8 \
    --batch_size_val=32 \
    --data_path="./data/DiDeMo/" \
    --features_path="" \
    --datatype="didemo" \
    --max_words=77 \
    --max_frames=32 \
    --feature_framerate=1 \
    --pretrained_clip_name="ViT-L/14" \
    --slice_framepos=2 \
    --loose_type \
    --linear_patch=2d \
    --interaction=no \
    --sim_header=meanP \
    --freeze_layer_num=0 \
    --expand_msrvtt_sentences \
    --clip_evl \
    --output_dir="" \
    --pretrained_path="" \
