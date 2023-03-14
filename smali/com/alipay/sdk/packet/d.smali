.class public final Lcom/alipay/sdk/packet/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:[B


# direct methods
.method public constructor <init>(Z[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/d;->a:Z

    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/packet/d;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/packet/d;->b:[B

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/sdk/packet/d;->a:Z

    return v0
.end method
