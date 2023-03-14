.class Lcom/ghome/sdk/GHome$2$2$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$2$2;->onClick(Landroid/app/Dialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ghome/sdk/GHome$2$2;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$2$2;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 6

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$2;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$2;->val$gameId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$2;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static {p1, p2, v0, v1, p3}, Lcom/ghome/sdk/GHome;->access$200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 348
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$102(Z)Z

    .line 349
    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v0, p1, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2$1;->this$2:Lcom/ghome/sdk/GHome$2$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v1, p1, Lcom/ghome/sdk/GHome$2;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db6f

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u9690\u79c1\u653f\u7b56\u63a5\u53e3\u534f\u8bae\u5185\u5bb9\u4e3a\u7a7a, \u8be5\u63a5\u53e3\u5931\u8d25"

    const-string v5, "agreementAction"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 344
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$2$2$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
