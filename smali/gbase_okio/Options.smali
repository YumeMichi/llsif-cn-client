.class public final Lgbase_okio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lgbase_okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lgbase_okio/ByteString;


# direct methods
.method private constructor <init>([Lgbase_okio/ByteString;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 26
    iput-object p1, p0, Lgbase_okio/Options;->byteStrings:[Lgbase_okio/ByteString;

    return-void
.end method

.method public static varargs of([Lgbase_okio/ByteString;)Lgbase_okio/Options;
    .locals 1

    .line 30
    new-instance v0, Lgbase_okio/Options;

    invoke-virtual {p0}, [Lgbase_okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lgbase_okio/ByteString;

    invoke-direct {v0, p0}, Lgbase_okio/Options;-><init>([Lgbase_okio/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Lgbase_okio/ByteString;
    .locals 1

    .line 34
    iget-object v0, p0, Lgbase_okio/Options;->byteStrings:[Lgbase_okio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lgbase_okio/Options;->get(I)Lgbase_okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 38
    iget-object v0, p0, Lgbase_okio/Options;->byteStrings:[Lgbase_okio/ByteString;

    array-length v0, v0

    return v0
.end method
