.class public Lcom/ghomesdk/gameplus/utils/network/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static isSandbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 2

    .line 28
    new-instance p9, Ljava/util/HashMap;

    invoke-direct {p9}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {}, Lcom/sqo/eventcollection/EventLog;->getGLogGlobalParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 32
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "api_point"

    invoke-virtual {p9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "api_url"

    .line 34
    invoke-virtual {p9, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f4

    .line 35
    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "api_params"

    invoke-virtual {p9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "api_return"

    invoke-virtual {p9, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p4}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p4, p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->str2Int(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "api_return_code"

    invoke-virtual {p9, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "httpResponseCode:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "api_return_msg"

    invoke-virtual {p9, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, p6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "api_consuming"

    invoke-virtual {p9, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Lcom/greport/glog/util/NetworkChecker;->getNetTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "net_type"

    invoke-virtual {p9, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 45
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN_AGREEMENT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p3, 0x1

    :cond_2
    const-string p1, "apiStatic"

    invoke-static {p0, p1, p9, p3}, Lcom/greport/glog/GLog;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static setSandbox(Z)V
    .locals 0

    .line 23
    sput-boolean p0, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->isSandbox:Z

    return-void
.end method
