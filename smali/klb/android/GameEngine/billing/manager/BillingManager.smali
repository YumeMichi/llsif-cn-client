.class public Lklb/android/GameEngine/billing/manager/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.java"


# static fields
.field public static final BILLING_DEFAULT_DELAY_MSEC:I = 0x3e8

.field public static final BILLING_NODELAY:I

.field private static billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;
    .locals 1

    .line 24
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lklb/android/GameEngine/billing/manager/BillingManager;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/billing/manager/BillingManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    .line 26
    :cond_0
    sget-object p0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    return-object p0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private isBillingAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static requestTerminate()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestBuy(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestConsume(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public requestGetProducts(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
