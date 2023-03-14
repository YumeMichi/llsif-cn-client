.class Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SmallAccountLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 3

    .line 45
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$000(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$000(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->doSmallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
