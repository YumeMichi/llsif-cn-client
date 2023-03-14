.class public Lorg/bouncycastle/util/IPTest;
.super Ljunit/framework/TestCase;


# static fields
.field private static final invalidIP4v:[Ljava/lang/String;

.field private static final invalidIP6v:[Ljava/lang/String;

.field private static final validIP4v:[Ljava/lang/String;

.field private static final validIP6v:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0.0.0.0"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "255.255.255.255"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "192.168.0.0"

    aput-object v5, v1, v4

    sput-object v1, Lorg/bouncycastle/util/IPTest;->validIP4v:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "0.0.0.0.1"

    aput-object v5, v1, v2

    const-string v5, "256.255.255.255"

    aput-object v5, v1, v3

    const-string v5, "1"

    aput-object v5, v1, v4

    const-string v5, "A.B.C"

    aput-object v5, v1, v0

    const/4 v5, 0x4

    const-string v6, "1:.4.6.5"

    aput-object v6, v1, v5

    sput-object v1, Lorg/bouncycastle/util/IPTest;->invalidIP4v:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0:0:0:0:0:0:0:0"

    aput-object v1, v0, v2

    const-string v1, "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF"

    aput-object v1, v0, v3

    const-string v1, "0:1:2:3:FFFF:5:FFFF:1"

    aput-object v1, v0, v4

    sput-object v0, Lorg/bouncycastle/util/IPTest;->validIP6v:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0.0.0.0:1"

    aput-object v1, v0, v2

    const-string v1, "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFFF"

    aput-object v1, v0, v3

    sput-object v0, Lorg/bouncycastle/util/IPTest;->invalidIP6v:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private testIP([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    const-string v3, "."

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Valid input string not accepted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/IPTest;->fail(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length p1, p2

    if-ge v0, p1, :cond_3

    aget-object p1, p2, v0

    invoke-static {p1}, Lorg/bouncycastle/util/IPAddress;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input string accepted: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/IPTest;->fail(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "IPTest"

    return-object v0
.end method

.method public testIPv4()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/util/IPTest;->validIP4v:[Ljava/lang/String;

    sget-object v1, Lorg/bouncycastle/util/IPTest;->invalidIP4v:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/util/IPTest;->testIP([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public testIPv6()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/util/IPTest;->validIP6v:[Ljava/lang/String;

    sget-object v1, Lorg/bouncycastle/util/IPTest;->invalidIP6v:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/util/IPTest;->testIP([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
