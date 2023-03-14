.class Lcom/ghome/sdk/common/GHomeApiBase$25;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHomeApiBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->getAgreementStatus(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghome/sdk/common/IGHomeApi$Callback;)V
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
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$25;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$25;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$25;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 8

    .line 822
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "status"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "version"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->agreements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;

    if-eqz v5, :cond_0

    .line 832
    iget v6, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 833
    iget-object v2, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    .line 834
    iget-object v5, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    sput-object v5, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_1
    iget v6, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 836
    iget-object v3, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    .line 837
    iget-object v5, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    sput-object v5, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    goto :goto_0

    .line 838
    :cond_2
    iget v6, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    if-nez v6, :cond_0

    .line 839
    iget-object v6, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->content:Ljava/lang/String;

    const-string v7, "privacyContent"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v5, v5, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    const-string v6, "privacyUrl"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v2, v1

    move-object v3, v2

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$25;->val$activity:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, v2, v3}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_5
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$25;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$25;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string v5, "getAgreementStatus"

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 819
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/common/GHomeApiBase$25;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
