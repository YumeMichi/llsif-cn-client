.class public Lcom/alipay/sdk/widget/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/widget/d;->a(Lcom/alipay/sdk/widget/e;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/webkit/SslErrorHandler;

.field public final synthetic c:Lcom/alipay/sdk/widget/d;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/widget/d;Landroid/app/Activity;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/d$d;->c:Lcom/alipay/sdk/widget/d;

    iput-object p2, p0, Lcom/alipay/sdk/widget/d$d;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/sdk/widget/d$d;->b:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/widget/d$d;->a:Landroid/app/Activity;

    new-instance v4, Lcom/alipay/sdk/widget/d$d$a;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/widget/d$d$a;-><init>(Lcom/alipay/sdk/widget/d$d;)V

    const-string v1, "\u5b89\u5168\u8b66\u544a"

    const-string v2, "\u5b89\u5168\u8fde\u63a5\u8bc1\u4e66\u6821\u9a8c\u65e0\u6548\uff0c\u5c06\u65e0\u6cd5\u4fdd\u8bc1\u8bbf\u95ee\u6570\u636e\u7684\u5b89\u5168\u6027\uff0c\u8bf7\u5b89\u88c5\u652f\u4ed8\u5b9d\u540e\u91cd\u8bd5\u3002"

    const-string v3, "\u786e\u5b9a"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alipay/sdk/widget/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method
