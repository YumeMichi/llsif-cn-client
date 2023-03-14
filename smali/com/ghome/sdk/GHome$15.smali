.class Lcom/ghome/sdk/GHome$15;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->writtenOffUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$writtenOffCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/ghome/sdk/GHome$15;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$15;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$15;->val$writtenOffCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 8
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

    .line 1044
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/sdk/GHome$15;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->setUserID(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/ghome/sdk/GHome$15;->val$activity:Landroid/app/Activity;

    const-string v1, "agreement_status"

    const-string v2, "ghome_logout"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/ghome/sdk/GHome$15;->this$0:Lcom/ghome/sdk/GHome;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ghome/sdk/GHome;->access$2700(Lcom/ghome/sdk/GHome;Z)V

    .line 1048
    iget-object v2, p0, Lcom/ghome/sdk/GHome$15;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ghome/sdk/GHome$15;->val$writtenOffCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string v7, "writtenOff"

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
