.class public Lcom/alipay/sdk/widget/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/widget/d$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/widget/d$d;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/widget/d$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/d$d$a;->a:Lcom/alipay/sdk/widget/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/widget/d$d$a;->a:Lcom/alipay/sdk/widget/d$d;

    iget-object p1, p1, Lcom/alipay/sdk/widget/d$d;->b:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/widget/d$d$a;->a:Lcom/alipay/sdk/widget/d$d;

    iget-object p1, p1, Lcom/alipay/sdk/widget/d$d;->c:Lcom/alipay/sdk/widget/d;

    invoke-static {p1}, Lcom/alipay/sdk/widget/d;->b(Lcom/alipay/sdk/widget/d;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    const-string p2, "net"

    const-string v0, "SSLDenied"

    const-string v1, "2"

    invoke-static {p1, p2, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/alipay/sdk/app/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/app/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/alipay/sdk/widget/d$d$a;->a:Lcom/alipay/sdk/widget/d$d;

    iget-object p1, p1, Lcom/alipay/sdk/widget/d$d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
