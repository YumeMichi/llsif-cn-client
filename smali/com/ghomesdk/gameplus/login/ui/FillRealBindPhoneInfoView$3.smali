.class Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "FillRealBindPhoneInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 82
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v1, "dlg_fillrealinfo_content"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe0(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "*\u6d77\u5916\u7528\u6237\u8bf7\u8054\u7cfb\u5ba2\u670d\u3002"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void
.end method
