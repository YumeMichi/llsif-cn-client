.class Lcom/ghome/sdk/GHome$7;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->afterAgreementInit(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$gameId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/ghome/sdk/GHome$7;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$7;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$7;->val$gameId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/ghome/sdk/GHome$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$7;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db6a

    invoke-static {p1}, Lcom/ghome/sdk/common/Constants;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "initialize"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_0
    iget-object p1, p0, Lcom/ghome/sdk/GHome$7;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$7;->val$gameId:Ljava/lang/String;

    const-string v0, "A1"

    invoke-static {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/GamePlus;->my_initErrorCodeList(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->NEEDFLOATWINDOWAPERMISSION:Ljava/lang/String;

    .line 724
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->NEEDFLOATWINDOWAPERMISSION:Ljava/lang/String;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "1"

    :cond_1
    const-string p2, "0"

    .line 727
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 728
    iget-object p1, p0, Lcom/ghome/sdk/GHome$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->jumpToFloatWindowPermissionPage(Landroid/content/Context;)V

    .line 731
    :cond_2
    iget-object p1, p0, Lcom/ghome/sdk/GHome$7;->this$0:Lcom/ghome/sdk/GHome;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ghome/sdk/GHome;->access$1902(Lcom/ghome/sdk/GHome;Z)Z

    .line 732
    iget-object v0, p0, Lcom/ghome/sdk/GHome$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$7;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v2, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f"

    const-string v5, "initialize"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
