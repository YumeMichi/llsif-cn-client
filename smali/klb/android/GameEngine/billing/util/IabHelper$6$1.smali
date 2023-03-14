.class Lklb/android/GameEngine/billing/util/IabHelper$6$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lklb/android/GameEngine/billing/util/IabHelper$6;

.field final synthetic val$inv_f:Lklb/android/GameEngine/billing/util/Inventory;

.field final synthetic val$result_f:Lklb/android/GameEngine/billing/util/IabResult;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper$6;Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$6$1;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$6;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6$1;->val$result_f:Lklb/android/GameEngine/billing/util/IabResult;

    iput-object p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6$1;->val$inv_f:Lklb/android/GameEngine/billing/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 627
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$6$1;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$6;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$6$1;->val$result_f:Lklb/android/GameEngine/billing/util/IabResult;

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6$1;->val$inv_f:Lklb/android/GameEngine/billing/util/Inventory;

    invoke-interface {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Inventory;)V

    return-void
.end method
