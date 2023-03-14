.class Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "CountryCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->cancel()V

    .line 47
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;)Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v0, v1, v1}, Lcom/ghomesdk/gameplus/callback/GetDataCallback;->callback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
