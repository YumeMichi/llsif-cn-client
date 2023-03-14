.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "BindPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->init()V
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

    .line 99
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 3

    .line 102
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2$1;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$2;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    .line 110
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->show()V

    return-void
.end method
