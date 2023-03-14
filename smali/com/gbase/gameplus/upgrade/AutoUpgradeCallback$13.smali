.class Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;
.super Ljava/lang/Object;
.source "AutoUpgradeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->onUpgradeInfoResultWithUI(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;ILjava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;->this$0:Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    iput p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;->val$result:I

    iput-object p3, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$300()Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 390
    invoke-static {}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->access$300()Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;

    move-result-object p1

    iget p2, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;->val$result:I

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback$13;->val$message:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;->onUpdateError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
