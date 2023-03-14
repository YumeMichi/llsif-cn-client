.class Lcom/ghome/sdk/GHome$3$2$1;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$3$2;->onClick(Landroid/app/Dialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ghome/sdk/GHome$3$2;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$3$2;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperateCallback(Z)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0, v0}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 423
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3;->val$finalAgreementService:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    .line 424
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3;->val$finalAgreementPrivacy:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 426
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object v2, v2, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v2, v2, Lcom/ghome/sdk/GHome$3;->val$data:Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    iget v2, v2, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {v0}, Lcom/ghome/sdk/GHome;->access$502(Z)Z

    .line 429
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v0, p1, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v1, p1, Lcom/ghome/sdk/GHome$3;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v2, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u534f\u8bae\u63a5\u53e3\u540c\u610f\u6210\u529f"

    const-string v5, "agreementAction"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 432
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$602(Z)Z

    .line 433
    iget-object v1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v1, v1, Lcom/ghome/sdk/GHome$3;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v2, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object v2, v2, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v2, v2, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 434
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v0, p1, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$3$2$1;->this$2:Lcom/ghome/sdk/GHome$3$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$3$2;->this$1:Lcom/ghome/sdk/GHome$3;

    iget-object v1, p1, Lcom/ghome/sdk/GHome$3;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db6f

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u7528\u6237\u62d2\u7edd\u9690\u79c1\u653f\u7b56\uff0c\u8be5\u63a5\u53e3\u5931\u8d25"

    const-string v5, "agreementAction"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
