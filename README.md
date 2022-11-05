# Company_Simulation_DB

## Company_Simulation
Company_Simulationアプリの環境構築
## 利用手順
1. リポジトリをクローン
    ```shell
   git clone git@github.com:Akitsu-Lab/docker-practice.git
    ```
2. 環境変数を設定
   ```shell
   read PASS
   ```
   ```shell
   export DB_ROOT_PASS=$PASS
   ```
   ```shell
   read USER_PASS
   ```
   ```shell
   export DB_USER_PASS=$USER_PASS
   ```
3. コンテナの立ち上げ
    ```shell
    docker-compose up -d
    ```
4. コンテナに入る
    - コンテナIDを調べる
    ```shell
    docker ps 
    ```
    - コンテナIDを指定し、コンテナに入る
    ```shell
    docker exec -it コンテナID /bin/bash
    ```
5. jdkコンテナに入り、apiのjarファイル起動
   ```shell
   java -jar company_simulation_api-0.0.1-SNAPSHOT.jar
   ```
6. mysqlにログイン
    - パスワードはdocker-compose.ymlのMYSQL_ROOT_PASSWORDを使用
    ```shell
    mysql -u root -p
    ```
    - mysqlからログアウト
    ```shell
    exit
    ```
7. コンテナからログアウト
    ```shell
    exit
    ```
8. コンテナのストップ＆停止
    ```shell
    docker-compose down
    ```

### その他のコマンド
- 再起動
    ```shell
    docker-compose restart
    ```
- docker-compose.ymlで管理されているコンテナの一覧を取得
    ```shell
    docker-compose ps
    ```
  
### mysqlへのログインが上手くいかない場合
- dataディレクトリを削除する

### 参考資料
- mysqlのenvironment
  https://hub.docker.com/_/mysql/
- dockerhubのopenjdk
  https://hub.docker.com/_/openjdk