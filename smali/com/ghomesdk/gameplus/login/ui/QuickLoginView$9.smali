.class Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "QuickLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 7

    .line 168
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "agreement_checkbox_selected"

    invoke-static {p1, v1, v0}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$500(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$400(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    .line 174
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    .line 175
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    .line 176
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    .line 177
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    .line 178
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result p1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto/16 :goto_3

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$602(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Z)Z

    goto :goto_0

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$602(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Z)Z

    .line 189
    :goto_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$600(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Z

    move-result p1

    const-string v0, "QuickLoginView"

    if-eqz p1, :cond_3

    const-string p1, "guest quick login"

    .line 190
    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    const-string p1, "user quick login"

    .line 193
    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$402(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    iget-object v3, v2, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$400(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$600(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Z

    move-result v5

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;)V

    invoke-virtual/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController;->doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;)V

    :goto_2
    return-void

    .line 179
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v0, "\u6ca1\u6709\u9009\u62e9\u8d26\u53f7"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
