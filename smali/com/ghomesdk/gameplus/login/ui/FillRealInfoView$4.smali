.class Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "FillRealInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 1

    .line 84
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u60a8\u7684\u8eab\u4efd\u8bc1\u4fe1\u606f\u4ec5\u7528\u4e8e\u5b9e\u540d\u8865\u586b\uff0c\u6211\u4eec\u4e0d\u4f1a\u5c06\u6b64\u4fe1\u606f\u7528\u4e8e\u5176\u4ed6\u4efb\u4f55\u573a\u666f\u3002"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "*\u6d77\u5916\u7528\u6237\u8bf7\u8054\u7cfb\u5ba2\u670d\u3002"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void
.end method
