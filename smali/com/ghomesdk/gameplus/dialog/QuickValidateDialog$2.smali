.class Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;
.super Ljava/lang/Object;
.source "QuickValidateDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 10

    .line 118
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$200(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;

    invoke-direct {v9, p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;-><init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;)V

    const/4 v3, 0x2

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/ghomesdk/gameplus/login/LoginController;->doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V

    return-void
.end method
