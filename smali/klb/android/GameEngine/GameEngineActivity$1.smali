.class Lklb/android/GameEngine/GameEngineActivity$1;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    iput-object p2, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 191
    :try_start_0
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/GameEngineActivity;->access$000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 194
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->nanotime()J

    move-result-wide v2

    iget-object v4, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v4}, Lklb/android/GameEngine/GameEngineActivity;->access$100(Lklb/android/GameEngine/GameEngineActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :catch_0
    return-void
.end method
