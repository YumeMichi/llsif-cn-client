.class Lcom/ghome/sdk/common/GHomeApiBase$16;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$areaId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$extend:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$areaId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$productId:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$extend:Ljava/lang/String;

    iput-object p7, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$areaId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$productId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$extend:Ljava/lang/String;

    iget-object v7, p0, Lcom/ghome/sdk/common/GHomeApiBase$16;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/ghome/sdk/common/GHomeApiBase;->payUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
