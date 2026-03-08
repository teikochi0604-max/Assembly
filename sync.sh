#!/bin/bash
# 1. 自动添加所有更改
git add .

# 2. 提交，备注包含当前时间，省去起名字的烦恼
git commit -m "Auto-sync at $(date '+%Y-%m-%d %H:%M:%S')"

# 3. 推送到服务器
git push origin main

echo "✅ 代码已同步到 GitHub!"
