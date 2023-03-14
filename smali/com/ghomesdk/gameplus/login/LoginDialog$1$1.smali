.class Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginDialog$1;->callback(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

.field final synthetic val$code:I

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginDialog$1;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iput p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->getIsLimit()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 134
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$601(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 135
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$302(Z)Z

    .line 136
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$500(Lcom/ghomesdk/gameplus/login/LoginDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->getLimitMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$1;

    invoke-direct {p2, p0}, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;)V

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 146
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->getLimitMsg()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->getLimitMsg()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 147
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$701(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 148
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$302(Z)Z

    .line 149
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$500(Lcom/ghomesdk/gameplus/login/LoginDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->getLimitMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string p2, "\u8fdb\u5165\u6e38\u620f"

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;

    invoke-direct {p2, p0}, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1$2;-><init>(Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;)V

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$801(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 160
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$302(Z)Z

    .line 161
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object p1

    iget p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$code:I

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$message:Ljava/lang/String;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->val$data:Ljava/util/Map;

    invoke-interface {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 162
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->access$002(Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)Lcom/ghomesdk/gameplus/callback/LoginCallback;

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginDialog$1$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;)V

    return-void
.end method
