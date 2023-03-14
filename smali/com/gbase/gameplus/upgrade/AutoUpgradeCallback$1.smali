.class Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;
.super Ljava/lang/Object;
.source "AutoUpgradeCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;-><init>(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeUtility;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor thread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$100(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$002(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 57
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$000(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$100(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$202(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 59
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$1;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$200(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    return-void
.end method
