.class Lklb/android/GameEngine/PFInterface$5;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/PFInterface;->copyToClipBoard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lklb/android/GameEngine/GameEngineActivity;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
    .locals 0

    .line 1437
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface$5;->val$context:Lklb/android/GameEngine/GameEngineActivity;

    iput-object p2, p0, Lklb/android/GameEngine/PFInterface$5;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1440
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface$5;->val$context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1441
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$5;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
