## 自分用のJupyterLabのテンプレ

docker_xxx/ (任意のディレクトリ名) <br>
├─src/ (作業ディレクトリ)<br>
├─Dockerfile <br>
├─docker-compose.yml <br>
└─requirements.txt <br>


## Start
コンテナの実行
```bash
docker compose run jupyter
```
コンテナの停止、削除
```
docker compose down
```
コンテナの起動
```
docker compose up
```

