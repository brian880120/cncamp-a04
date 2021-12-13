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
