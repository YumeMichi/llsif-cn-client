.class Lcom/ghome/sdk/GHome$5$2$1;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$5$2;->onClick(Landroid/app/Dialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ghome/sdk/GHome$5$2;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$5$2;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperateCallback(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_0

    .line 588
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->val$finalAgreementService:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    .line 589
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->val$finalAgreementPrivacy:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 591
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object v4, v4, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget v4, v4, Lcom/ghome/sdk/GHome$5;->val$versionNew:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 592
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$1602(Z)Z

    .line 594
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-interface {p1, v1, v2, v0}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 597
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/ghome/sdk/GHome;->access$1200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {v1}, Lcom/ghome/sdk/GHome;->access$1702(Z)Z

    .line 601
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$2$1;->this$2:Lcom/ghome/sdk/GHome$5$2;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v1, -0x1

    invoke-interface {p1, v1, v2, v0}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
