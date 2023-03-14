.class Lcom/geetest/sdk/k$b;
.super Ljava/lang/Object;
.source "GTFPClientHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/geetest/sdk/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/geetest/sdk/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/k;-><init>(Lcom/geetest/sdk/k$a;)V

    sput-object v0, Lcom/geetest/sdk/k$b;->a:Lcom/geetest/sdk/k;

    return-void
.end method

.method static synthetic a()Lcom/geetest/sdk/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/k$b;->a:Lcom/geetest/sdk/k;

    return-object v0
.end method
