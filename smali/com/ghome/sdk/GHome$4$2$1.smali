.class Lcom/ghome/sdk/GHome$4$2$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$4$2;->onClick(Landroid/app/Dialog;Landroid/view/View;)V
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
.field final synthetic this$2:Lcom/ghome/sdk/GHome$4$2;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$4$2;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    iget p1, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 492
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    iget v0, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    iget-object v1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static {p1, p2, v0, p3, v1}, Lcom/ghome/sdk/GHome;->access$900(Lcom/ghome/sdk/GHome;Landroid/app/Activity;ILcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p3, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p3, p3, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p3, p3, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p3, v0, v1}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 495
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    const-string p3, "agreement_checkbox_selected"

    invoke-static {p1, p3, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 496
    invoke-static {v1}, Lcom/ghome/sdk/GHome;->access$1002(Z)Z

    .line 497
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p3, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p3, p3, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p3, p3, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p3}, Lcom/ghome/sdk/GHome;->access$1100(Lcom/ghome/sdk/GHome;Landroid/content/Context;)V

    .line 499
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string p3, ""

    invoke-interface {p1, v0, p3, p2}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 502
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/ghome/sdk/GHome;->access$1200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 486
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/ghome/sdk/GHome;->access$802(Z)Z

    .line 487
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4$2;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 p3, -0x1

    iget-object v0, p0, Lcom/ghome/sdk/GHome$4$2$1;->this$2:Lcom/ghome/sdk/GHome$4$2;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$4$2;->val$msg:Ljava/lang/String;

    invoke-interface {p1, p3, v0, p2}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 482
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$4$2$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
