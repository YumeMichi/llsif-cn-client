.class Lcom/ghome/sdk/common/GHomeApiBase$10;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->doPrivacyAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->val$appid:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->val$appid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$10;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ghome/sdk/common/GHomeApiBase;->doPrivacyAgreementUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
