.class Lcom/ghome/sdk/common/GHomeApiBase$7;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->switchAccount(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$apiCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->val$apiCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$7;->val$apiCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ghome/sdk/common/GHomeApiBase;->switchAccountUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
