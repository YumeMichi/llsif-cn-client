.class Lklb/android/GameEngine/billing/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->bindService(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 219
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, p1, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 221
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object p1, p1, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 227
    :try_start_0
    iget-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v0, "Checking for in-app billing 3 support."

    invoke-static {p2, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object p2, p2, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v0, 0x3

    const-string v1, "inapp"

    invoke-interface {p2, v0, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p2, "Setup successful."

    goto :goto_0

    :cond_0
    const-string p2, "Error checking for billing v3 support."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 p2, -0x3e9

    .line 239
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, "RemoteException while setting up in-app billing."

    move-object p2, p1

    const/16 p1, -0x3e9

    .line 242
    :goto_0
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 246
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-static {v0, v1, p1, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$300(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabHelper;->restartSetup()V

    return-void
.end method
