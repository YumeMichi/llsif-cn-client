.class Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$14;
.super Ljava/lang/Object;
.source "AutoUpgradeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V
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

    .line 469
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$14;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 473
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$14;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$400(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$14;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startUpdate(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method
