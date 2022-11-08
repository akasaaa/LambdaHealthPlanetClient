# LambdaHealthPlanetClient

[akasaaa/HealthPlanetClient](https://github.com/akasaaa/HealthPlanetClient)をLambda上で動かす。
`from`,`to`が指定可能

1. ランタイムに「ユーザー独自の〜」を指定し、zipをアップロードする
2. 環境変数に以下を設定する(取得方法は[API仕様書](https://www.healthplanet.jp/apis/api.html)参考)
  - CLIENT_ID
  - CLIENT_SECRET
  - REFRESH_TOKEN
