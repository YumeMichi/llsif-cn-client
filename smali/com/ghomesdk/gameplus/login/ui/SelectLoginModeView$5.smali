.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$5;
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

    .line 217
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 0

    .line 220
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doClose()V

    return-void
.end method
