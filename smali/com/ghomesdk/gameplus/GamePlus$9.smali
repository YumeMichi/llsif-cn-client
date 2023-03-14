.class final Lcom/ghomesdk/gameplus/GamePlus$9;
.super Ljava/lang/Object;
.source "GamePlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus;->dolocalLogout(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_activity:Landroid/app/Activity;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$9;->val$_activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$9;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 791
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/ServerApi;->reset()V

    .line 792
    iget-object v0, p0, Lcom/ghomesdk/gameplus/GamePlus$9;->val$_activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginData;->setLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 793
    iget-object v0, p0, Lcom/ghomesdk/gameplus/GamePlus$9;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz v0, :cond_0

    .line 795
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    const-string v1, "GamePlus.my_logout callback"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/ghomesdk/gameplus/GamePlus$9;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u6ce8\u9500\u6210\u529f"

    invoke-interface {v0, v1, v3, v2}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
