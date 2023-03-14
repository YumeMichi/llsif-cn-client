.class public Lcom/gsk/QQPayResultActivity;
.super Landroid/app/Activity;
.source "QQPayResultActivity.java"

# interfaces
.implements Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;


# static fields
.field static gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

.field private static openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

.field private static qqCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static executeJs(Ljava/lang/String;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/gsk/QQPayResultActivity;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "gskApiWebInterface != null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/gsk/QQPayResultActivity;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    invoke-interface {v0, p0}, Lcom/gsk/api/GskWebApi$IGskApiWebSupport;->executeJs(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object p1, Lcom/gsk/api/GskWebApi;->qqCallback:Ljava/lang/String;

    sput-object p1, Lcom/gsk/QQPayResultActivity;->qqCallback:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/gsk/api/GskWebApi;->getGskApi()Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    move-result-object p1

    sput-object p1, Lcom/gsk/QQPayResultActivity;->gskApiWebInterface:Lcom/gsk/api/GskWebApi$IGskApiWebSupport;

    .line 23
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "QQPayResultActivity start"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/gsk/api/GskWebApi;->getQQAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object p1

    sput-object p1, Lcom/gsk/QQPayResultActivity;->openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    .line 25
    sget-object p1, Lcom/gsk/QQPayResultActivity;->openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-virtual {p0}, Lcom/gsk/QQPayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/gsk/QQPayResultActivity;->setIntent(Landroid/content/Intent;)V

    .line 42
    sget-object v0, Lcom/gsk/QQPayResultActivity;->openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    return-void
.end method

.method public onOpenResponse(Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .locals 9

    if-nez p1, :cond_0

    .line 47
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "QQ\u652f\u4ed8\uff1a\u4e0d\u80fd\u8bc6\u522b\u7684intent"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    if-eqz v0, :cond_2

    .line 49
    check-cast p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " apiName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serialnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSucess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " retCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "javascript:%s(%s, \"%s\")"

    const-string v5, ",qqCallback=="

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 52
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5ba2\u6237\u7aef\u652f\u4ed8\u5b8c\u6210\uff1a\u6210\u529fmessage=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gsk/QQPayResultActivity;->qqCallback:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    new-array p1, v3, [Ljava/lang/Object;

    sget-object v0, Lcom/gsk/QQPayResultActivity;->qqCallback:Ljava/lang/String;

    aput-object v0, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    aput-object v0, p1, v1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsk/QQPayResultActivity;->executeJs(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/gsk/QQPayResultActivity;->finish()V

    return-void

    .line 57
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5ba2\u6237\u7aef\u652f\u4ed8\u5b8c\u6210\uff1a\u5931\u8d25message=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gsk/QQPayResultActivity;->qqCallback:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    new-array p1, v3, [Ljava/lang/Object;

    sget-object v0, Lcom/gsk/QQPayResultActivity;->qqCallback:Ljava/lang/String;

    aput-object v0, p1, v6

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    aput-object v0, p1, v1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsk/QQPayResultActivity;->executeJs(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/gsk/QQPayResultActivity;->finish()V

    goto :goto_0

    .line 61
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "QQ\u652f\u4ed8\uff1a\u4e0d\u80fd\u8bc6\u522b\u7684\u54cd\u5e94"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
