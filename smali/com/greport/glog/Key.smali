.class public final Lcom/greport/glog/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/greport/glog/Key$table;,
        Lcom/greport/glog/Key$field;,
        Lcom/greport/glog/Key$eventType;
    }
.end annotation


# static fields
.field public static final UPLOAD_ANR_RECORD:I = 0x2

.field public static final UPLOAD_ERROR_RECORD:I = 0x1

.field public static final UPLOAD_RECORD_GLOG:I = 0x29a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
