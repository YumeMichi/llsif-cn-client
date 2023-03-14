.class Lklb/android/GameEngine/billing/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->startSetup(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
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

    .line 271
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$3;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$3;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$3;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v1, "startSetup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$3;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$3;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$500(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method
