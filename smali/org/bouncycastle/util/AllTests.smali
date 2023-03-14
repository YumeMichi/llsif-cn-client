.class public Lorg/bouncycastle/util/AllTests;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lorg/bouncycastle/util/AllTests;->suite()Ljunit/framework/Test;

    move-result-object p0

    invoke-static {p0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    return-void
.end method

.method public static suite()Ljunit/framework/Test;
    .locals 2

    new-instance v0, Ljunit/framework/TestSuite;

    const-string v1, "util tests"

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/bouncycastle/util/IPTest;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    return-object v0
.end method
