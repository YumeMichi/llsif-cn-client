.class Lcom/ghome/sdk/common/GHomeApiBase$12;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->getAreaConfig(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$12;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$12;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$12;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$12;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$12;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/ghome/sdk/common/GHomeApiBase;->getAreaConfigUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
