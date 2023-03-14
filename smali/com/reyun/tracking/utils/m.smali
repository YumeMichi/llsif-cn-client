.class public Lcom/reyun/tracking/utils/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/reyun/tracking/utils/n;

    invoke-direct {v0, p0, p1}, Lcom/reyun/tracking/utils/n;-><init>(Ljava/lang/String;Lcom/reyun/tracking/utils/p;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;
    .locals 7

    new-instance v6, Lcom/reyun/tracking/utils/q;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/reyun/tracking/utils/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/reyun/tracking/utils/p;)V

    return-object v6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/reyun/tracking/utils/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/reyun/tracking/utils/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)V

    return-object v0
.end method
