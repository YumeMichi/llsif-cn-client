.class Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;
.super Ljava/lang/Object;
.source "AutoUpgradeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

.field final synthetic val$nFinalSize:I

.field final synthetic val$strDownloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;Ljava/lang/String;I)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    iput-object p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->val$strDownloadUrl:Ljava/lang/String;

    iput p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->val$nFinalSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$300()Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-static {}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$300()Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->val$strDownloadUrl:Ljava/lang/String;

    iget v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->val$nFinalSize:I

    invoke-virtual {p1, p2, v0}, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->onNeedUpate(Ljava/lang/String;I)V

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$400(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;)Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$4;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startUpdate(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method
