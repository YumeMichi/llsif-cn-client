.class Lklb/android/GameEngine/EditBoxItem$2;
.super Ljava/lang/Object;
.source "EditBoxItem.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 173
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem$2;->this$0:Lklb/android/GameEngine/EditBoxItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 176
    iget-object v0, p0, Lklb/android/GameEngine/EditBoxItem$2;->this$0:Lklb/android/GameEngine/EditBoxItem;

    invoke-static {v0}, Lklb/android/GameEngine/EditBoxItem;->access$000(Lklb/android/GameEngine/EditBoxItem;)Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method
