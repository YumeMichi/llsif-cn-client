.class Lklb/android/GameEngine/billing/util/IabHelper$7;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$delay_msec:I

.field final synthetic val$multiListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;ILjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$delay_msec:I

    iput-object p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$purchases:Ljava/util/List;

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;

    iput-object p5, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$multiListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1003
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const/4 v1, 0x0

    const-string v2, "consume"

    invoke-static {v0, v2, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 1004
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$delay_msec:I

    invoke-static {v0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$purchases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lklb/android/GameEngine/billing/util/Purchase;

    .line 1014
    :try_start_0
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v4, v3}, Lklb/android/GameEngine/billing/util/IabHelper;->access$900(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 1015
    new-instance v4, Lklb/android/GameEngine/billing/util/IabResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lklb/android/GameEngine/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1018
    invoke-virtual {v3}, Lklb/android/GameEngine/billing/util/IabException;->getResult()Lklb/android/GameEngine/billing/util/IabResult;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 1024
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v2, Lklb/android/GameEngine/billing/util/IabHelper$7$1;

    invoke-direct {v2, p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper$7$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$7;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1031
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$multiListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v2, Lklb/android/GameEngine/billing/util/IabHelper$7$2;

    invoke-direct {v2, p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper$7$2;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$7;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
