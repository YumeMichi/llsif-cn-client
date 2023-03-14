.class Lcom/ghome/sdk/common/GHomeApiBase$22;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->changeThirdBindPhone(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getIsSndaidThird()I

    move-result v0

    const-string v1, "gl_app_theme_light"

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/ghome/sdk/common/GHomeApiBase$22$1;

    invoke-direct {v3, p0}, Lcom/ghome/sdk/common/GHomeApiBase$22$1;-><init>(Lcom/ghome/sdk/common/GHomeApiBase$22;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;-><init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V

    .line 706
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->show()V

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, "gl_bindphone"

    invoke-static {v0, v3, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/ghome/sdk/common/GHomeApiBase$22$2;

    invoke-direct {v3, p0}, Lcom/ghome/sdk/common/GHomeApiBase$22$2;-><init>(Lcom/ghome/sdk/common/GHomeApiBase$22;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;-><init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V

    .line 719
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->show()V

    goto :goto_0

    .line 722
    :cond_1
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/ghome/sdk/common/GHomeApiBase$22$3;

    invoke-direct {v3, p0}, Lcom/ghome/sdk/common/GHomeApiBase$22$3;-><init>(Lcom/ghome/sdk/common/GHomeApiBase$22;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;-><init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V

    .line 729
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->show()V

    goto :goto_0

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$22;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v1, -0xa5db67

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u8bf7\u5148\u767b\u5f55"

    invoke-interface {v0, v1, v3, v2}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
