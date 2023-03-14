.class Lcom/ghome/sdk/GHome$3$1;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$3;->onOperateCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/sdk/GHome$3;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$3;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/ghome/sdk/GHome$3$1;->this$1:Lcom/ghome/sdk/GHome$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x0

    .line 446
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$402(Z)Z

    .line 447
    iget-object p2, p0, Lcom/ghome/sdk/GHome$3$1;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$3;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$3$1;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1, p1}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 448
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$1;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v0, p1, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$1;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v1, p1, Lcom/ghome/sdk/GHome$3;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v2, -0xa5db6f

    const-string v3, "\u7528\u6237\u62d2\u7edd\u9690\u79c1\u653f\u7b56\uff0c\u8be5\u63a5\u53e3\u5931\u8d25"

    const-string v5, "agreementAction"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
