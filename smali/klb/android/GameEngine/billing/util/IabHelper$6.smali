.class Lklb/android/GameEngine/billing/util/IabHelper$6;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$delay_msec:I

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;IZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$delay_msec:I

    iput-boolean p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$querySkuDetails:Z

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$moreSkus:Ljava/util/List;

    iput-object p5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 599
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const/4 v1, 0x0

    const-string v2, "refresh inventory"

    invoke-static {v0, v2, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 600
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v2, "queryInventory"

    invoke-static {v0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$delay_msec:I

    invoke-static {v0, v3}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 604
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v3, "Inventory refresh successful."

    invoke-direct {v0, v1, v3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 607
    :try_start_0
    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v3, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$delay_msec:I

    invoke-static {v2, v3}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 611
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-boolean v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$querySkuDetails:Z

    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventory(ZLjava/util/List;)Lklb/android/GameEngine/billing/util/Inventory;

    move-result-object v1
    :try_end_0
    .catch Lklb/android/GameEngine/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    const/4 v2, 0x3

    const-string v3, "Inventory refresh failed."

    invoke-direct {v0, v2, v3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 614
    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/IabException;->getResult()Lklb/android/GameEngine/billing/util/IabResult;

    move-result-object v0

    .line 620
    :goto_0
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 625
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v2, v2, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v3, Lklb/android/GameEngine/billing/util/IabHelper$6$1;

    invoke-direct {v3, p0, v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper$6$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$6;Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
