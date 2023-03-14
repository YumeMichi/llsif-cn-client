.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;
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

    .line 175
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;->val$cbNoRemind:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 178
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;->val$cbNoRemind:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getLoginUserId()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doClose()V

    return-void
.end method
