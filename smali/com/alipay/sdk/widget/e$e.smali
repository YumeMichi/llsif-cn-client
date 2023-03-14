.class public final Lcom/alipay/sdk/widget/e$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/alipay/sdk/widget/e$e;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/alipay/sdk/widget/e$e;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/alipay/sdk/widget/e$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/alipay/sdk/widget/e$e;->a:Z

    return p0
.end method

.method public static synthetic b(Lcom/alipay/sdk/widget/e$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/alipay/sdk/widget/e$e;->b:Z

    return p0
.end method
