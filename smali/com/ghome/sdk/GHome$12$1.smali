.class Lcom/ghome/sdk/GHome$12$1;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$12;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/sdk/GHome$12;

.field final synthetic val$finalAgreementPrivacy:Ljava/lang/String;

.field final synthetic val$finalAgreementService:Ljava/lang/String;

.field final synthetic val$versionNew:I


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$12;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/ghome/sdk/GHome$12$1;->this$1:Lcom/ghome/sdk/GHome$12;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$12$1;->val$finalAgreementService:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$12$1;->val$finalAgreementPrivacy:Ljava/lang/String;

    iput p4, p0, Lcom/ghome/sdk/GHome$12$1;->val$versionNew:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperateCallback(Z)V
    .locals 5

    .line 933
    iget-object v0, p0, Lcom/ghome/sdk/GHome$12$1;->val$finalAgreementService:Ljava/lang/String;

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    .line 934
    iget-object v0, p0, Lcom/ghome/sdk/GHome$12$1;->val$finalAgreementPrivacy:Ljava/lang/String;

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 936
    iget-object v0, p0, Lcom/ghome/sdk/GHome$12$1;->this$1:Lcom/ghome/sdk/GHome$12;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$12;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ghome/sdk/GHome$12$1;->val$versionNew:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    sget-object v4, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/ghome/sdk/GHome$12$1;->this$1:Lcom/ghome/sdk/GHome$12;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$12;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const-string v1, "ghome_reopen"

    goto :goto_0

    :cond_0
    const-string v1, "ghome_logout"

    :goto_0
    const-string v3, "agreement_status"

    invoke-static {v0, v3, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/ghome/sdk/GHome$12$1;->this$1:Lcom/ghome/sdk/GHome$12;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$12;->val$activity:Landroid/app/Activity;

    const-string v1, "agreement_checkbox_selected"

    invoke-static {v0, v1, p1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 941
    iget-object v0, p0, Lcom/ghome/sdk/GHome$12$1;->this$1:Lcom/ghome/sdk/GHome$12;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$12;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p1, v2, v3}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
