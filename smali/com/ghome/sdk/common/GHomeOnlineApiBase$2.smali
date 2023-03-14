.class Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;
.super Ljava/lang/Object;
.source "GHomeOnlineApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeOnlineApiBase;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$areaId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$extend:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeOnlineApiBase;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$areaId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$productId:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$extend:Ljava/lang/String;

    iput-object p7, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "GHomeOnlineApiBase"

    const-string v1, "\u5f00\u59cb\u6267\u884c_pay() 1"

    .line 167
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$areaId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$productId:Ljava/lang/String;

    iget-object v7, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$extend:Ljava/lang/String;

    iget-object v8, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$2;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static/range {v2 .. v8}, Lcom/ghome/sdk/common/GHomeOnlineApiBase;->access$100(Lcom/ghome/sdk/common/GHomeOnlineApiBase;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
