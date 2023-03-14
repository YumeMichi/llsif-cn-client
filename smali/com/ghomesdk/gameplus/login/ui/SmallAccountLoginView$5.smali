.class Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "SmallAccountLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;)V
    .locals 1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$102(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;)Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    .line 84
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->getMasterAcc()Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$002(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    new-instance p2, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    iget-object v0, p1, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    invoke-direct {p2, v0, p3}, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;-><init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;)V

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$202(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;)Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    .line 86
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    invoke-static {p3, p1, p2}, Lcom/ghomesdk/gameplus/login/LoginUtil;->showError(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;)V

    return-void
.end method
