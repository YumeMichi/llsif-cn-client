.class public Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;
.super Ljava/lang/Object;
.source "OpenApiResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengqu/daoyu/opensdk/model/OpenApiResp$RespCode;
    }
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public code:I

.field public errMsg:Ljava/lang/String;

.field public openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByBundle(Landroid/os/Bundle;)Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;
    .locals 3

    .line 1
    new-instance v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;

    invoke-direct {v0}, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;-><init>()V

    const/4 v1, -0x1

    if-nez p0, :cond_0

    .line 2
    iput v1, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->code:I

    const-string p0, "\u83b7\u53d6\u8ba4\u8bc1\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 3
    iput-object p0, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->errMsg:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v2, "_dy_opensdk_resp_code"

    .line 4
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->code:I

    const-string v1, ""

    const-string v2, "_dy_opensdk_resp_err_msg"

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->errMsg:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_open_id"

    .line 6
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->openId:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_app_id"

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->appId:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_client_id"

    .line 8
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->clientId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->code:I

    const-string v2, "_dy_opensdk_resp_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->errMsg:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_err_msg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->openId:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_open_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->appId:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->clientId:Ljava/lang/String;

    const-string v2, "_dy_opensdk_resp_client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenApiResp{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->openId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
