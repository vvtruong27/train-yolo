#!/bin/bash

# Tạo môi trường ảo
python3 -m venv .venv

# Kích hoạt môi trường ảo
source .venv/bin/activate

# Update pip
echo "Đang update pip..."
pip install --upgrade pip

# Cài đặt requirements.txt nếu có
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "Không tìm thấy requirements.txt"
fi

echo "Môi trường ảo đã được thiết lập và kích hoạt!"
echo "Để kích hoạt lại môi trường: source .venv/bin/activate" 