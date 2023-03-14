.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;
.super Ljava/lang/Object;
.source "BindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

.field final synthetic val$cbNoRemind:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;Landroid/widget/CheckBox;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->val$cbNoRemind:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 158
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->val$cbNoRemind:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "isCheckRefuse"

    if-eqz p1, :cond_0

    .line 161
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getLoginUserId()Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getLoginUserId()Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 167
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 170
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doCloseView()V

    return-void
.end method
