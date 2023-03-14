.class Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$3;
.super Ljava/lang/Object;
.source "QuickLoginView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

.field final synthetic val$ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Landroid/app/Activity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$3;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$3;->val$ctx:Landroid/app/Activity;

    const-string v0, "agreement_checkbox_selected"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
