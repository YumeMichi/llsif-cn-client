.class Lcom/ghome/gshare/weixin/GShareWXEngine$1;
.super Ljava/lang/Object;
.source "GShareWXEngine.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/weixin/GShareWXEngine;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/weixin/GShareWXEngine;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$1;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$1;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-static {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->access$000(Lcom/ghome/gshare/weixin/GShareWXEngine;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$1;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;

    invoke-virtual {v0, p1}, Lcom/ghome/gshare/weixin/GShareWXEngine;->onShareCallback(Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;)V

    :goto_0
    return-void
.end method
