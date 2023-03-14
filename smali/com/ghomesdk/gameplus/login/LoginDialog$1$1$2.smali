.class Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;
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

    .line 149
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 152
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 153
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget p2, p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$code:I

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$message:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 154
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;->this$2:Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$002(Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    return-void
.end method
