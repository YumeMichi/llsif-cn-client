.class Lcom/ghome/sdk/GHome$11;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->switchAccountUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/ghome/sdk/GHome$11;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$11;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$11;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 848
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/ghome/sdk/GHome$11;->val$activity:Landroid/app/Activity;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->setUserID(Landroid/app/Activity;Ljava/lang/String;)V

    .line 850
    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->this$0:Lcom/ghome/sdk/GHome;

    invoke-virtual {p1}, Lcom/ghome/sdk/GHome;->isSdkAgreement()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 852
    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->val$activity:Landroid/app/Activity;

    const-string p3, "agreement_status"

    const-string v0, "ghome_logout"

    invoke-static {p1, p3, v0}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->this$0:Lcom/ghome/sdk/GHome;

    invoke-static {p1, p2}, Lcom/ghome/sdk/GHome;->access$2300(Lcom/ghome/sdk/GHome;Z)V

    .line 855
    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$11;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$2400(Lcom/ghome/sdk/GHome;)Lcom/ghome/sdk/common/IGHomeApi$Callback;

    move-result-object p3

    const-string v0, "switchAccount"

    invoke-virtual {p1, p2, p3, v0}, Lcom/ghome/sdk/GHome;->loginUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_0
    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    if-eqz p1, :cond_1

    .line 858
    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->this$0:Lcom/ghome/sdk/GHome;

    invoke-static {p1, p2}, Lcom/ghome/sdk/GHome;->access$2502(Lcom/ghome/sdk/GHome;Z)Z

    .line 860
    iget-object v1, p0, Lcom/ghome/sdk/GHome$11;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$11;->val$activity:Landroid/app/Activity;

    const-string p2, "KEY_AGREEMENT_VERSION_NEW"

    const-string p3, "0"

    invoke-static {p1, p2, p3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ghome/sdk/GHome$11$1;

    invoke-direct {v5, p0}, Lcom/ghome/sdk/GHome$11$1;-><init>(Lcom/ghome/sdk/GHome$11;)V

    const-string v3, "ghome_logout"

    move-object v0, v1

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/GamePlus;->getAgreementContentNew(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
