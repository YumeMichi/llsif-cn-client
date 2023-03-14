.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$5;
.super Ljava/lang/Object;
.source "BindPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/GetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$200(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$200(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
