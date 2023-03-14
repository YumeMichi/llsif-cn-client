.class public Lcom/sqo/log/adapter/GReportAdapter;
.super Ljava/lang/Object;
.source "GReportAdapter.java"

# interfaces
.implements Lcom/sqo/log/adapter/LogAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private level:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sqo/log/adapter/GReportAdapter;->context:Landroid/content/Context;

    .line 17
    iput p2, p0, Lcom/sqo/log/adapter/GReportAdapter;->level:I

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 26
    :cond_0
    iget p2, p0, Lcom/sqo/log/adapter/GReportAdapter;->level:I

    if-ge p1, p2, :cond_1

    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "data"

    .line 30
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/sqo/log/adapter/GReportAdapter;->level:I

    return-void
.end method
