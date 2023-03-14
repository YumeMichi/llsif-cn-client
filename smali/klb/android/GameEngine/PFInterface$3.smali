.class Lklb/android/GameEngine/PFInterface$3;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/PFInterface;->movieview_setText(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$control:Lklb/android/GameEngine/MovieViewItem;

.field final synthetic val$inner_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/MovieViewItem;Ljava/lang/String;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface$3;->val$control:Lklb/android/GameEngine/MovieViewItem;

    iput-object p2, p0, Lklb/android/GameEngine/PFInterface$3;->val$inner_text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 696
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface$3;->val$control:Lklb/android/GameEngine/MovieViewItem;

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$3;->val$inner_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieViewItem;->setText(Ljava/lang/String;)V

    return-void
.end method
