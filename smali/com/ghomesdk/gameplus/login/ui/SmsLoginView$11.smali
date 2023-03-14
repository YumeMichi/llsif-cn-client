.class Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$11;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SmsLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$11;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 1

    .line 207
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$11;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$500(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    return-void
.end method
