.class Lcom/ghome/sdk/common/GHomeApiBase$24;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHomeApiBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->getAgreement(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
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

    .line 780
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$24;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$24;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$24;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 7

    .line 783
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 784
    iget-object v0, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->agreements:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->agreements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;

    if-eqz v3, :cond_0

    .line 789
    iget v5, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 790
    iget-object v1, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_1
    iget v5, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 792
    iget-object v2, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "serviceAgreementUrl"

    .line 796
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "privacyPolicyUrl"

    .line 797
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "version"

    invoke-interface {v4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$24;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$24;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string v5, "getAgreement"

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 780
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/common/GHomeApiBase$24;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
