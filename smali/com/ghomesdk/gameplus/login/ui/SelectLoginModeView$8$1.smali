.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8$1;
.super Ljava/lang/Object;
.source "SelectLoginModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$1100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
