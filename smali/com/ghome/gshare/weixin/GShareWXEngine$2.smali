.class Lcom/ghome/gshare/weixin/GShareWXEngine$2;
.super Landroid/content/BroadcastReceiver;
.source "GShareWXEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/weixin/GShareWXEngine;->regToWx()V
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

    .line 96
    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$2;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$2;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-static {p1}, Lcom/ghome/gshare/weixin/GShareWXEngine;->access$200(Lcom/ghome/gshare/weixin/GShareWXEngine;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iget-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$2;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-static {p2}, Lcom/ghome/gshare/weixin/GShareWXEngine;->access$100(Lcom/ghome/gshare/weixin/GShareWXEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getAppID()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void
.end method
