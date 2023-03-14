.class Lcom/ghome/sdk/GHome$2$1;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$2;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/sdk/GHome$2;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$2;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/ghome/sdk/GHome$2$1;->this$1:Lcom/ghome/sdk/GHome$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x0

    .line 360
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$002(Z)Z

    .line 361
    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$1;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v0, p1, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$1;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v1, p1, Lcom/ghome/sdk/GHome$2;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v2, -0xa5db6f

    const-string v3, "\u9690\u79c1\u653f\u7b56\u63a5\u53e3\u534f\u8bae\u5185\u5bb9\u4e3a\u7a7a, \u8be5\u63a5\u53e3\u5931\u8d25"

    const-string v5, "agreementAction"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
