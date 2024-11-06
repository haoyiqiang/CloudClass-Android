#!/bin/bash

## 定义项目根目录，确保脚本在正确的目录中运行
#PROJECT_ROOT=$(dirname "$0")
#
## 进入项目根目录
#cd "$PROJECT_ROOT" || exit

./gradlew :AgoraEduUIKit:clean

# 执行 Gradle 命令并处理错误
./gradlew :AgoraEduUIKit:publishToMavenCentral --no-configuration-cache

# 检查 Gradle 命令的退出状态码
if [ $? -eq 0 ]; then
  echo "Publish to Maven Central succeeded."
else
  echo "Publish to Maven Central failed."
  exit 1
fi