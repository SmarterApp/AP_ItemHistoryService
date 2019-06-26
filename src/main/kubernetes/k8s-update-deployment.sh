#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/ap-item-history-service-deployment ap-item-history-service=@dockerTagBase@/ap-item-history-service:@version@