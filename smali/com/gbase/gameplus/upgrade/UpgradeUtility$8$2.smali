.class Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$2;
.super Ljava/lang/Object;
.source "UpgradeUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;->onResponse(Lgbase_okhttp3/Call;Lgbase_okhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;

.field final synthetic val$nRet:I


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;I)V
    .locals 0

    .line 1843
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$2;->this$0:Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;

    iput p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$2;->val$nRet:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1847
    iget v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$2;->val$nRet:I

    const/4 v1, -0x7

    if-eq v0, v1, :cond_4

    const/4 v1, -0x6

    if-eq v0, v1, :cond_3

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1853
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2600()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1850
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "No Upgrade"

    invoke-interface {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1856
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const-string v2, "VER_CTRL Content Mistake"

    invoke-interface {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1859
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const-string v2, "VER_CTRL JSONException"

    invoke-interface {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1862
    :cond_4
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const-string v2, "SDCard Can\'t Use"

    invoke-interface {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
