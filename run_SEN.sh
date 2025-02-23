DATASET_NAME="CUHK-PEDES"
CUDA_VISIBLE_DEVICES=0 \
python train.py \
--name sen \
--img_aug \
--batch_size 128 \
--need_MAE \
--mlm_loss_weight 1.0 \
--mae_loss_weight 10 \
--tri_loss_weight 10 \
--mask_ratio 0.7 \
--lr 1e-5 \
--dataset_name $DATASET_NAME \
--loss_names 'sdm+mae+id+tri' \
--root_dir 'your_data_path' \
--num_epoch 60 \
--lrscheduler 'cosine'
