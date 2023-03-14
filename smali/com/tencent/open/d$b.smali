.class Lcom/tencent/open/d$b;
.super Lcom/tencent/open/b$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/d;


# direct methods
.method private constructor <init>(Lcom/tencent/open/d;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/tencent/open/d$b;->a:Lcom/tencent/open/d;

    invoke-direct {p0}, Lcom/tencent/open/b$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/d;Lcom/tencent/open/d$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/tencent/open/d$b;-><init>(Lcom/tencent/open/d;)V

    return-void
.end method
