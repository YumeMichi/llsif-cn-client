.class Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;
.super Ljava/lang/Object;
.source "SmsLoginView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

.field final synthetic val$ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;Landroid/app/Activity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;->val$ctx:Landroid/app/Activity;

    const/4 p2, 0x1

    const-string v0, "agreement_checkbox_selected"

    invoke-static {p1, v0, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 94
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
