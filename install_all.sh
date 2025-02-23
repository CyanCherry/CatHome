set -ex

CAT_NAME=cyanogen

DOCKER_REGISTRY=docker-registry-ui.$CAT_NAME.heiyu.space

# open webUI
cd ./OpenWebUI || exit 1
docker pull ghcr.io/open-webui/open-webui:main --platform linux/amd64
docker tag ghcr.io/open-webui/open-webui:main $DOCKER_REGISTRY/open-webui/open-webui:main
docker push $DOCKER_REGISTRY/open-webui/open-webui:main
lzc-cli project build
lzc-cli app install


