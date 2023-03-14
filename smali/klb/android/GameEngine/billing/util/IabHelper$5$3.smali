.class Lklb/android/GameEngine/billing/util/IabHelper$5$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lklb/android/GameEngine/billing/util/IabHelper$5;

.field final synthetic val$result:Lklb/android/GameEngine/billing/util/IabResult;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5$3;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$5;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5$3;->val$result:Lklb/android/GameEngine/billing/util/IabResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 430
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5$3;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$5;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5$3;->val$result:Lklb/android/GameEngine/billing/util/IabResult;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    return-void
.end method
