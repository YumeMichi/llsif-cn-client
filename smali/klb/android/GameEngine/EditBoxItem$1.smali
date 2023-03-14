.class Lklb/android/GameEngine/EditBoxItem$1;
.super Ljava/lang/Object;
.source "EditBoxItem.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/EditBoxItem;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/EditBoxItem;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/EditBoxItem;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem$1;->this$0:Lklb/android/GameEngine/EditBoxItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 164
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    .line 165
    iget-object p2, p0, Lklb/android/GameEngine/EditBoxItem$1;->this$0:Lklb/android/GameEngine/EditBoxItem;

    invoke-static {p2}, Lklb/android/GameEngine/EditBoxItem;->access$000(Lklb/android/GameEngine/EditBoxItem;)Lklb/android/GameEngine/GameEngineActivity;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
