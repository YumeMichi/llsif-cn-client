.class Lklb/android/GameEngine/billing/util/IabHelper$5;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$extraData:Ljava/lang/String;

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field final synthetic val$requestCode:I

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Ljava/lang/String;Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;I)V
    .locals 0

    .line 368
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$extraData:Ljava/lang/String;

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    iput p5, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 371
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v1, "launchPurchaseFlow"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 372
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v4, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    const-string v8, "inapp"

    iget-object v9, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$extraData:Ljava/lang/String;

    invoke-interface/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v1, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$800(Lklb/android/GameEngine/billing/util/IabHelper;Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to buy item, Error response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 383
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 385
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v2, Lklb/android/GameEngine/billing/util/IabHelper$5$1;

    invoke-direct {v2, p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper$5$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "BUY_INTENT"

    .line 398
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 399
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching buy intent for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Request code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    iput v2, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mRequestCode:I

    .line 401
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    iput-object v2, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 402
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v4, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    iget v6, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 404
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 405
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 402
    invoke-virtual/range {v4 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 422
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 423
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 426
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 427
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v2, Lklb/android/GameEngine/billing/util/IabHelper$5$3;

    invoke-direct {v2, p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper$5$3;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 408
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 409
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 412
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 413
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, v1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v2, Lklb/android/GameEngine/billing/util/IabHelper$5$2;

    invoke-direct {v2, p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper$5$2;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
