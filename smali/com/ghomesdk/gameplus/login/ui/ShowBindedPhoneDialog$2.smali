.class Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$2;
.super Ljava/lang/Object;
.source "ShowBindedPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
