.class Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$3;
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

.field final synthetic val$e:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;Lorg/json/JSONException;)V
    .locals 0

    .line 1874
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$3;->this$0:Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;

    iput-object p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$3;->val$e:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1877
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response body JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$3;->val$e:Lorg/json/JSONException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x4

    invoke-interface {v0, v2, v1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method
