.class public final Lcom/gsk/utils/YouYunSmsHelper;
.super Ljava/lang/Object;
.source "YouYunSmsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "_id > ?"

.field public static final SMS_URI_ALL:Landroid/net/Uri;

.field public static final SMS_URI_DRAFT:Landroid/net/Uri;

.field public static final SMS_URI_INBOX:Landroid/net/Uri;

.field public static final SMS_URI_SEND:Landroid/net/Uri;

.field private static final SORT_ORDER:Ljava/lang/String; = "date desc"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://sms/"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_ALL:Landroid/net/Uri;

    const-string v0, "content://sms/inbox"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_INBOX:Landroid/net/Uri;

    const-string v0, "content://sms/sent"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_SEND:Landroid/net/Uri;

    const-string v0, "content://sms/draft"

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_DRAFT:Landroid/net/Uri;

    const/4 v0, 0x6

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsk/utils/YouYunSmsHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll(Landroid/content/ContentResolver;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "II)",
            "Ljava/util/List<",
            "Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_ALL:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/gsk/utils/YouYunSmsHelper;->getSmsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDraft(Landroid/content/ContentResolver;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "II)",
            "Ljava/util/List<",
            "Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_DRAFT:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/gsk/utils/YouYunSmsHelper;->getSmsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInbox(Landroid/content/ContentResolver;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "II)",
            "Ljava/util/List<",
            "Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_INBOX:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/gsk/utils/YouYunSmsHelper;->getSmsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSend(Landroid/content/ContentResolver;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "II)",
            "Ljava/util/List<",
            "Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_SEND:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/gsk/utils/YouYunSmsHelper;->getSmsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "II)",
            "Ljava/util/List<",
            "Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_0
    sget-object v3, Lcom/gsk/utils/YouYunSmsHelper;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id > ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v1

    const-string v6, "date desc"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "_id"

    .line 111
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-string p3, "address"

    .line 112
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    const-string v1, "person"

    .line 113
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "body"

    .line 114
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "date"

    .line 115
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "type"

    .line 116
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eqz p0, :cond_2

    .line 118
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    new-instance v5, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;

    invoke-direct {v5}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;-><init>()V

    .line 120
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->setId(I)V

    .line 121
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 122
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->setName(Ljava/lang/String;)V

    .line 123
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->setSmsbody(Ljava/lang/String;)V

    .line 124
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->setDate(Ljava/lang/String;)V

    .line 125
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->setType(Ljava/lang/String;)V

    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, p2, :cond_0

    .line 132
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method
