.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$3;
.super Ljava/lang/Object;
.source "SelectLoginModeView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementInit()V
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

    .line 117
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v0, "agreement_checkbox_selected"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 121
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
