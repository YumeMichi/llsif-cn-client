.class Lcom/tencent/open/utils/f$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tencent/open/utils/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/tencent/open/utils/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/f;-><init>(Lcom/tencent/open/utils/f$1;)V

    sput-object v0, Lcom/tencent/open/utils/f$a;->a:Lcom/tencent/open/utils/f;

    return-void
.end method

.method static synthetic a()Lcom/tencent/open/utils/f;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/open/utils/f$a;->a:Lcom/tencent/open/utils/f;

    return-object v0
.end method
