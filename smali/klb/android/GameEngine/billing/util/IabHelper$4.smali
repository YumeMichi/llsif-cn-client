.class Lklb/android/GameEngine/billing/util/IabHelper$4;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->restartSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$4;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 293
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$4;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v1, "startSetup"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 296
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$4;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 299
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$4;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$500(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method
