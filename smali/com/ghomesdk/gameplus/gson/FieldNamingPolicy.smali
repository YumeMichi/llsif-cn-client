.class public abstract enum Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/ghomesdk/gameplus/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$1;

    const/4 v1, 0x0

    const-string v2, "IDENTITY"

    invoke-direct {v0, v2, v1}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->IDENTITY:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    .line 53
    new-instance v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$2;

    const/4 v2, 0x1

    const-string v3, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v3, v2}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    .line 72
    new-instance v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$3;

    const/4 v3, 0x2

    const-string v4, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v4, v3}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    .line 90
    new-instance v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$4;

    const/4 v4, 0x3

    const-string v5, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v5, v4}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    .line 113
    new-instance v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$5;

    const/4 v5, 0x4

    const-string v6, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v6, v5}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    const/4 v0, 0x5

    .line 31
    new-array v0, v0, [Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    sget-object v6, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->IDENTITY:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    aput-object v6, v0, v1

    sget-object v1, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->$VALUES:[Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/ghomesdk/gameplus/gson/FieldNamingPolicy$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 127
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_1

    .line 145
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 153
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, p0, v1}, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;
    .locals 1

    .line 31
    const-class v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    return-object p0
.end method

.method public static values()[Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;
    .locals 1

    .line 31
    sget-object v0, Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->$VALUES:[Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghomesdk/gameplus/gson/FieldNamingPolicy;

    return-object v0
.end method
