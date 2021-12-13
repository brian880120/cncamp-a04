# cncamp-a04
## 作业要求

- 为HTTPServer添加0-2秒的随机延时
- 为 HTTPServer 项目添加延时 Metric
- 将 HTTPServer 部署至测试集群，并完成 Prometheus 配置
- 从 Promethus 界面中查询延时指标数据
- 创建一个 Grafana Dashboard 展现延时分配情况

## 通过Loki部署Promethus和Grafana

按照模块10的loki-stack步骤部署Promethu和Grafana
```sh
helm fetch grafana/loki-stack --version "2.4.1"
```
![Screenshot from 2021-12-12 20-18-13](https://user-images.githubusercontent.com/10457633/145739534-a046ee91-9cc2-420d-ae4c-07c0801ee65f.png)
![Screenshot from 2021-12-12 20-18-37](https://user-images.githubusercontent.com/10457633/145739555-1bd4f7bd-35f2-478c-9db4-a9c66486c2e4.png)

## HTTPServer延时与Metrics注册
HTTPServer请求的延时和Prometheus指标的expose在文件```middleware/delay.go```中实现与调用。Metrics指标的实现完全照搬教程。

## 启动命令
可通过命令:
```sh
make deploy
```
部署httpserver。部署文件与作业3的唯一区别是在```httpserver.deployment.yaml```文件里定义了prometheus的```scrape```和```port```

## 测试

### Promethus对于HTTPServer Pods的轮询和指标数据采集
![Screenshot from 2021-12-12 19-57-28](https://user-images.githubusercontent.com/10457633/145741008-cce72140-380f-465b-825a-db9d3c3db7c8.png)
![Screenshot from 2021-12-12 20-07-25](https://user-images.githubusercontent.com/10457633/145741017-ceaa0651-4ba9-4f89-a63e-0b08c86dfd6a.png)
