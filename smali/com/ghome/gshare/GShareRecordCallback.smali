.class public Lcom/ghome/gshare/GShareRecordCallback;
.super Ljava/lang/Object;
.source "GShareRecordCallback.java"

# interfaces
.implements Lcom/ghome/gshare/listener/GShareRecordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/gshare/GShareRecordCallback$MyShareListener;
    }
.end annotation


# instance fields
.field private myActivity:Landroid/app/Activity;

.field private myShareListener:Lcom/ghome/gshare/listener/GShareListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    .line 22
    iput-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myShareListener:Lcom/ghome/gshare/listener/GShareListener;

    .line 17
    iput-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback;->myShareListener:Lcom/ghome/gshare/listener/GShareListener;

    .line 18
    iput-object p1, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghome/gshare/GShareRecordCallback;)Lcom/ghome/gshare/listener/GShareListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myShareListener:Lcom/ghome/gshare/listener/GShareListener;

    return-object p0
.end method


# virtual methods
.method public onEndRecordFailed(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onEndRecordSuccess(Ljava/lang/String;)V
    .locals 6

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9\u5206\u4eab\u5e73\u53f0"

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    .line 27
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5fae\u4fe1"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "QQ"

    aput-object v4, v1, v3

    .line 28
    new-array v4, v3, [Lcom/ghome/gshare/GSharePlatformType;

    .line 29
    sget-object v5, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v5, v4, v2

    .line 30
    new-instance v5, Lcom/ghome/gshare/GShareRecordCallback$1;

    invoke-direct {v5, p0, v4}, Lcom/ghome/gshare/GShareRecordCallback$1;-><init>(Lcom/ghome/gshare/GShareRecordCallback;[Lcom/ghome/gshare/GSharePlatformType;)V

    invoke-virtual {v0, v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    new-instance v1, Lcom/ghome/gshare/GShareRecordCallback$2;

    invoke-direct {v1, p0, p1, v4}, Lcom/ghome/gshare/GShareRecordCallback$2;-><init>(Lcom/ghome/gshare/GShareRecordCallback;Ljava/lang/String;[Lcom/ghome/gshare/GSharePlatformType;)V

    const-string p1, "\u5206\u4eab"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    new-instance p1, Lcom/ghome/gshare/GShareRecordCallback$3;

    invoke-direct {p1, p0}, Lcom/ghome/gshare/GShareRecordCallback$3;-><init>(Lcom/ghome/gshare/GShareRecordCallback;)V

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onStartRecordFailed(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onStartRecordSuccess()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback;->myActivity:Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u5f55\u5236"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
