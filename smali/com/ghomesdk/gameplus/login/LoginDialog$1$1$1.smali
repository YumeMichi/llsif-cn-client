.class Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$1;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$1;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 140
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$1;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$500(Lcom/ghomesdk/gameplus/login/LoginDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "gl_autokey"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$1;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->show()V

    return-void
.end method
