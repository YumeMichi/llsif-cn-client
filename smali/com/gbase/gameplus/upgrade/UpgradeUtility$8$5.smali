.class Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$5;
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

.field final synthetic val$nCode:I


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;I)V
    .locals 0

    .line 1901
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$5;->this$0:Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;

    iput p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$5;->val$nCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1904
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoAsync response bad code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8$5;->val$nCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v2, v1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method
