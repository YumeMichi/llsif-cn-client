.class Lcom/ghome/sdk/GHome$12;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->beforeLoginAgree(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
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
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Lcom/ghome/sdk/common/IGHomeApi$Callback;Landroid/app/Activity;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/ghome/sdk/GHome$12;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$12;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 6

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    .line 903
    iget p1, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 911
    :cond_0
    iget-object p1, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->agreements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;

    if-eqz v3, :cond_1

    .line 913
    iget v4, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    if-ne v4, p2, :cond_2

    .line 914
    iget-object v0, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    goto :goto_0

    .line 915
    :cond_2
    iget v4, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 916
    iget-object v1, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    goto :goto_0

    .line 917
    :cond_3
    iget v4, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    if-nez v4, :cond_1

    .line 918
    iget-object v2, v3, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->content:Ljava/lang/String;

    goto :goto_0

    .line 924
    :cond_4
    iget p1, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    .line 927
    new-instance p2, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    iget-object p3, p0, Lcom/ghome/sdk/GHome$12;->val$activity:Landroid/app/Activity;

    const-string v3, "gl_app_theme_light"

    invoke-static {p3, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p2, p3, v3}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;-><init>(Landroid/content/Context;I)V

    .line 928
    invoke-virtual {p2, v2}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setContentUrl(Ljava/lang/String;)V

    .line 929
    new-instance p3, Lcom/ghome/sdk/GHome$12$1;

    invoke-direct {p3, p0, v0, v1, p1}, Lcom/ghome/sdk/GHome$12$1;-><init>(Lcom/ghome/sdk/GHome$12;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setOperationListener(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;)V

    .line 944
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->show()V

    return-void

    .line 904
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ghome/sdk/GHome$12;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, ""

    invoke-interface {p1, p3, v0, p2}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 900
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$12;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
