.class public Lklb/android/GameEngine/billing/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mActivity:Landroid/app/Activity;

.field volatile mAsyncInProgress:Z

.field volatile mAsyncOperation:Ljava/lang/String;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field volatile mImmediateAsyncExists:Z

.field mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field volatile mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    .line 91
    iput-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 95
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 96
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    const-string v0, ""

    .line 100
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    .line 106
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 107
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 159
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    const-string p1, "IAB helper created."

    .line 161
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V

    return-void
.end method

.method static synthetic access$300(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->setupFinished(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->bindService(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method static synthetic access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V

    return-void
.end method

.method static synthetic access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lklb/android/GameEngine/billing/util/IabHelper;Landroid/os/Bundle;)I
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lklb/android/GameEngine/billing/util/IabException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->consume(Lklb/android/GameEngine/billing/util/Purchase;)V

    return-void
.end method

.method private bindService(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 210
    new-instance v0, Lklb/android/GameEngine/billing/util/IabHelper$2;

    invoke-direct {v0, p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper$2;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 249
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Failed to bind service"

    .line 254
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 768
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    return-void

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consume(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lklb/android/GameEngine/billing/util/IabException;
        }
    .end annotation

    const-string v0, "consume"

    .line 653
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 659
    :try_start_0
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 661
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 673
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 674
    new-instance v2, Lklb/android/GameEngine/billing/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 662
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 663
    new-instance v0, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 657
    :cond_2
    new-instance v0, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v1, -0x3ed

    const-string v2, "PurchaseInfo is null."

    invoke-direct {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    new-instance v1, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lklb/android/GameEngine/billing/util/Purchase;",
            ">;",
            "Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;",
            "Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            "I)V"
        }
    .end annotation

    .line 1000
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lklb/android/GameEngine/billing/util/IabHelper$7;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lklb/android/GameEngine/billing/util/IabHelper$7;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;ILjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1039
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private delay(I)V
    .locals 2

    if-lez p1, :cond_0

    const-string v0, "delaying consuming"

    .line 983
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    int-to-long v0, p1

    .line 985
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 990
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method private flagEndAsync()V
    .locals 2

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const-string v0, ""

    .line 855
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 856
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method private flagStartAsync(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 821
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 825
    monitor-enter p0

    .line 826
    :try_start_0
    iget-boolean v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    if-nez v2, :cond_3

    .line 827
    iget-boolean v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    const-string v2, "yield immediate task"

    .line 828
    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 830
    :cond_2
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    const/4 v1, 0x0

    goto :goto_1

    .line 834
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is waiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " running in another thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 836
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v2, 0x3e8

    .line 839
    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 836
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    if-eqz p2, :cond_5

    .line 844
    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    .line 847
    :cond_5
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 848
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting async operation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 776
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 778
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 781
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 782
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 784
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 792
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 794
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 797
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 798
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 800
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    const-string v1, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 743
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    .line 751
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 755
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object p0, v0, v2

    return-object p0

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 758
    array-length v0, v1

    if-lt p0, v0, :cond_2

    goto :goto_0

    .line 761
    :cond_2
    aget-object p0, v1, p0

    return-object p0

    .line 759
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 4

    .line 1043
    iget-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 4

    .line 1049
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 4

    .line 1053
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryPurchases(Lklb/android/GameEngine/billing/util/Inventory;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Querying owned items..."

    .line 862
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 868
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getPurchases with continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inapp"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 872
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Owned items response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPurchases() failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    .line 878
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    .line 879
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    .line 880
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 885
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 887
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 889
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 892
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 893
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 894
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 895
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 897
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sku is owned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 898
    new-instance v8, Lklb/android/GameEngine/billing/util/Purchase;

    invoke-direct {v8, v6, v7}, Lklb/android/GameEngine/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {v8}, Lklb/android/GameEngine/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "BUG: empty/null token!"

    .line 901
    invoke-direct {p0, v7}, Lklb/android/GameEngine/billing/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 902
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 905
    :cond_3
    invoke-virtual {p1, v8}, Lklb/android/GameEngine/billing/util/Inventory;->addPurchase(Lklb/android/GameEngine/billing/util/Purchase;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "INAPP_CONTINUATION_TOKEN"

    .line 908
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 910
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_5
    :goto_1
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 881
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method private querySkuDetails(Lklb/android/GameEngine/billing/util/Inventory;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lklb/android/GameEngine/billing/util/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 917
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    .line 921
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 922
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 923
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 928
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 929
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 934
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    .line 937
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x14

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    .line 939
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v6, v4, 0x14

    add-int/lit8 v7, v6, 0x14

    .line 940
    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 941
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 943
    :cond_3
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    .line 946
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v3, v2

    .line 947
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 948
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 950
    :cond_5
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 954
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 955
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 956
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    .line 959
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 960
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 962
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSkuDetails() failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_8
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 965
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    .line 970
    :cond_9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 973
    new-instance v3, Lklb/android/GameEngine/billing/util/SkuDetails;

    invoke-direct {v3, v2}, Lklb/android/GameEngine/billing/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1, v3}, Lklb/android/GameEngine/billing/util/Inventory;->addSkuDetails(Lklb/android/GameEngine/billing/util/SkuDetails;)V

    goto :goto_4

    :cond_a
    return v1
.end method

.method private setupFinished(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabHelper$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public consumeAsync(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lklb/android/GameEngine/billing/util/Purchase;",
            ">;",
            "Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 729
    invoke-direct {p0, p1, v0, p2, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V

    return-void
.end method

.method public consumeAsync(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;I)V
    .locals 1

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 720
    invoke-direct {p0, v0, p2, p1, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "Disposing."

    .line 309
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    const-string v0, "Unbinding from service."

    .line 311
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 314
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 315
    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    .line 169
    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    const-string v0, "handleActivityResult"

    .line 452
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 454
    iget v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mRequestCode:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown request code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v2

    .line 458
    :cond_0
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 464
    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 465
    new-instance p2, Lklb/android/GameEngine/billing/util/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 466
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_1
    return v0

    .line 469
    :cond_2
    invoke-direct {p0, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 470
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 471
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    if-nez v3, :cond_7

    const-string p2, "Successful resultcode from purchase activity."

    .line 474
    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 475
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    if-nez v5, :cond_3

    goto :goto_0

    .line 490
    :cond_3
    :try_start_0
    new-instance p2, Lklb/android/GameEngine/billing/util/Purchase;

    invoke-direct {p2, v4, v5}, Lklb/android/GameEngine/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_a

    .line 505
    new-instance p3, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v1, "Success"

    invoke-direct {p3, v2, v1}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 498
    invoke-direct {p0, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 500
    new-instance p2, Lklb/android/GameEngine/billing/util/IabResult;

    invoke-direct {p2, p1, p3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_4
    return v0

    :cond_5
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 480
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 482
    new-instance p1, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 483
    iget-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_6
    return v0

    :cond_7
    if-ne p2, v6, :cond_8

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_a

    .line 512
    new-instance p1, Lklb/android/GameEngine/billing/util/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 513
    iget-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 518
    new-instance p1, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 519
    iget-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_1

    .line 522
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {v3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 524
    new-instance p1, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 525
    iget-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_a
    :goto_1
    return v0
.end method

.method public isSetupDone()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 1

    const-string v0, ""

    .line 345
    invoke-virtual {p0, p1, p2, p3, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8

    .line 368
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lklb/android/GameEngine/billing/util/IabHelper$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lklb/android/GameEngine/billing/util/IabHelper$5;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Ljava/lang/String;Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;I)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lklb/android/GameEngine/billing/util/Inventory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lklb/android/GameEngine/billing/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lklb/android/GameEngine/billing/util/IabException;
        }
    .end annotation

    const-string v0, "queryInventory"

    .line 542
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 544
    :try_start_0
    new-instance v0, Lklb/android/GameEngine/billing/util/Inventory;

    invoke-direct {v0}, Lklb/android/GameEngine/billing/util/Inventory;-><init>()V

    .line 545
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->queryPurchases(Lklb/android/GameEngine/billing/util/Inventory;)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 551
    invoke-direct {p0, v0, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->querySkuDetails(Lklb/android/GameEngine/billing/util/Inventory;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    new-instance p2, Lklb/android/GameEngine/billing/util/IabException;

    const-string v0, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p2, p1, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 556
    :cond_1
    :goto_0
    invoke-static {v0}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V

    .line 557
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object p1

    invoke-virtual {p1, v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V

    return-object v0

    .line 547
    :cond_2
    new-instance p1, Lklb/android/GameEngine/billing/util/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v1, p2}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 564
    new-instance p2, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v0, -0x3ea

    const-string v1, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, v0, v1, p1}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 561
    new-instance p2, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v0, -0x3e9

    const-string v1, "Remote exception while refreshing inventory."

    invoke-direct {p2, v0, v1, p1}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 635
    invoke-virtual {p0, v0, v1, p1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;",
            "I)V"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lklb/android/GameEngine/billing/util/IabHelper$6;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lklb/android/GameEngine/billing/util/IabHelper$6;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;IZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public queryInventoryAsync(ZLklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0, p1, v0, p2, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V

    return-void
.end method

.method public restartSetup()V
    .locals 2

    .line 282
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const-string v0, "Restarting in-app billing setup."

    .line 285
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$4;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/billing/util/IabHelper$4;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarting but IAB helper is not set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSetup(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_0

    const-string v0, "Starting in-app billing setup."

    .line 270
    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$3;

    invoke-direct {v1, p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper$3;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
