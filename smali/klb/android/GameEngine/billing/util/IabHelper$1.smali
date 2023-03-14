.class Lklb/android/GameEngine/billing/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->setupFinished(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$response:I


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    iput p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->val$response:I

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 199
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabResult;

    iget v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->val$response:I

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$1;->val$msg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lklb/android/GameEngine/billing/util/IabResult;)V

    return-void
.end method
