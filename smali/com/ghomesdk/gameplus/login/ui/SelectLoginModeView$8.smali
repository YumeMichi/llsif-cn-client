.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SelectLoginModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 3

    .line 274
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$400(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$600(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$500(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$800(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$700(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$1000(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$900(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$1100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$1100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$1100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$1200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
