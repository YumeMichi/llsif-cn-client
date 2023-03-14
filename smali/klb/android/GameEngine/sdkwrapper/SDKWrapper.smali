.class public Lklb/android/GameEngine/sdkwrapper/SDKWrapper;
.super Ljava/lang/Object;
.source "SDKWrapper.java"


# static fields
.field private static inventory:Lklb/android/GameEngine/billing/util/Inventory; = null

.field private static final urlScheme:Ljava/lang/String; = "klab-lovelive-jp://"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    const-string p0, "SDKWrapper"

    const-string v0, "onCreate"

    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string p0, "SDKWrapper"

    const-string v0, "onNewIntent"

    .line 63
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 5

    const-string v0, "SDKWrapper"

    const-string v1, "onPayment"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LOVELIVE_ID"

    const-string v2, "user_id"

    .line 42
    invoke-static {v1, v2}, Lklb/android/GameEngine/PFInterface;->getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v2, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->inventory:Lklb/android/GameEngine/billing/util/Inventory;

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/SkuDetails;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lklb/android/GameEngine/billing/util/SkuDetails;->getPriceAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKU:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "price:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    const-string p0, "SDKWrapper"

    const-string v0, "onResume"

    .line 51
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 0

    .line 67
    sput-object p0, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->inventory:Lklb/android/GameEngine/billing/util/Inventory;

    return-void
.end method
