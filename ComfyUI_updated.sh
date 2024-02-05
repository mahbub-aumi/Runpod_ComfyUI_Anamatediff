#!/bin/bash

# Remove a folder
rm -rf ComfyUI

# Clone from git
git clone https://github.com/comfyanonymous/ComfyUI.git

# Change directory
cd ComfyUI

# Run commands to install from requirements.txt
pip install --upgrade pip
pip install -r requirements.txt

# Change the directory to ConfyUI custom nodes

cd /workspace/ComfyUI/custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git

git clone https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git

# Download Animatediff Models
cd /workspace/ComfyUI/custom_nodes/ComfyUI-AnimateDiff-Evolved/models


########## Models - Comment out the models you don't want to download

# mm_sd_v14.ckpt
#wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/mm_sd_v14.ckpt?download=true -O mm_sd_v14.ckpt

# mm_sd_v15.ckpt
#wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/mm_sd_v15.ckpt?download=true -O mm_sd_v15.ckpt

# mm_sd_v15_v2.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/mm_sd_v15_v2.ckpt?download=true -O mm_sd_v15_v2.ckpt

# mm_sdxl_v10_beta.ckpt
#wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/mm_sdxl_v10_beta.ckpt?download=true -O mm_sdxl_v10_beta.ckpt


# v3_sd15_mm.ckpt
#wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v3_sd15_mm.ckpt?download=true -O v3_sd15_mm.ckpt

# v3_sd15_sparsectrl_rgb.ckpt
#wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v3_sd15_sparsectrl_rgb.ckpt?download=true -O v3_sd15_sparsectrl_rgb.ckpt

# v3_sd15_sparsectrl_scribble.ckpt
#wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v3_sd15_sparsectrl_scribble.ckpt?download=true -O v3_sd15_sparsectrl_scribble.ckpt




#########Download Animatediff Motion Loras

cd /workspace/ComfyUI/custom_nodes/ComfyUI-AnimateDiff-Evolved/motion_lora

# v2_lora_PanLeft.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_PanLeft.ckpt?download=true -O v2_lora_PanLeft.ckpt

# v2_lora_PanRight.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_PanRight.ckpt?download=true -O v2_lora_PanRight.ckpt

# v2_lora_RollingAnticlockwise.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_RollingAnticlockwise.ckpt?download=true -O v2_lora_RollingAnticlockwise.ckpt

# v2_lora_RollingClockwise.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_RollingClockwise.ckpt?download=true -O v2_lora_RollingClockwise.ckpt

# v2_lora_TiltDown.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_TiltDown.ckpt?download=true -O v2_lora_TiltDown.ckpt

# v2_lora_TiltUp.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_TiltUp.ckpt?download=true -O v2_lora_TiltUp.ckpt

# v2_lora_ZoomIn.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_ZoomIn.ckpt?download=true -O v2_lora_ZoomIn.ckpt

# v2_lora_ZoomOut.ckpt
wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v2_lora_ZoomOut.ckpt?download=true -O v2_lora_ZoomOut.ckpt

# v3_sd15_adapter.ckpt
# wget https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v3_sd15_adapter.ckpt?download=true -O v3_sd15_adapter.ckpt


########## Download Stable Diffusion Models to generate picture
cd /workspace/ComfyUI/models/checkpoints

# Cardos Anime V2
wget https://huggingface.co/nergaldarski/CardosAnimeV2.0/resolve/main/cardosAnime_v20.safetensors?download=true -O cardosAnime_v20.safetensors

# SDXL base
#wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0_0.9vae.safetensors?download=true -O sd_xl_base_1.0_0.9vae.safetensors

# Dreamshaper XL
#wget https://civitai.com/api/download/models/251662 -O dreamshaper-xl


# Dreamshaper
#wget https://civitai.com/api/download/models/128713?type=Model&format=SafeTensor&size=pruned&fp=fp16 -O dreamshaper

########## Download Stable Diffusion Vae
cd /workspace/ComfyUI/models/vae

# SDXL Vae
#wget https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors?download=true -O sdxl_vae.safetensors

# Original Vae
wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors?download=true -O vae-ft-mse-840000-ema-pruned.safetensors




# Run ComfyUI
cd /workspace/ComfyUI

python main.py --listen
