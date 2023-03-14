.class public abstract Lcom/tencent/open/c;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field protected a:Lcom/tencent/open/b;

.field protected final b:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance p1, Lcom/tencent/open/c$1;

    invoke-direct {p1, p0}, Lcom/tencent/open/c$1;-><init>(Lcom/tencent/open/c;)V

    iput-object p1, p0, Lcom/tencent/open/c;->b:Landroid/webkit/WebChromeClient;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance p1, Lcom/tencent/open/b;

    invoke-direct {p1}, Lcom/tencent/open/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/open/c;->a:Lcom/tencent/open/b;

    return-void
.end method
