.class Lcom/ghome/sdk/common/GHomeApiBase$8;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->getTicket(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$areaId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$areaId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$areaId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ghome/sdk/common/GHomeApiBase$8;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ghome/sdk/common/GHomeApiBase;->getTicketUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
