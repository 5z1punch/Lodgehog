.class public Lcom/xlab/lodgehog/FridaCaller;
.super Ljava/lang/Object;
.source "FridaCaller.java"


# static fields
.field public static forceOffInline:Z

.field public static logFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    .line 9
    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->forceOffInline:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFrida(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 52
    sget-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->forceOffInline:Z

    if-eqz v0, :cond_3a

    .line 54
    add-int/lit8 v0, p0, -0x1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    array-length v1, p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 57
    const-string v1, "lodgehog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3a
    return-void
.end method

.method public static getLogFlag()Z
    .registers 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    return v0
.end method

.method public static obj2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 20
    const-string v0, ""

    .line 21
    if-nez p0, :cond_7

    .line 22
    const-string v0, "null@192e8asj"

    .line 32
    :goto_6
    return-object v0

    .line 26
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_6

    .line 28
    :catch_c
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toStrE@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static varargs preCall(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 35
    sget-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    if-nez v0, :cond_5

    .line 50
    :goto_4
    return-void

    .line 39
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 40
    invoke-static {p1}, Lcom/xlab/lodgehog/FridaCaller;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 41
    array-length v0, p2

    new-array v3, v0, [Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    :goto_11
    array-length v4, p2

    if-ge v0, v4, :cond_1f

    .line 43
    aget-object v4, p2, v0

    invoke-static {v4}, Lcom/xlab/lodgehog/FridaCaller;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 45
    :cond_1f
    invoke-static {v1, p0, v2, v3}, Lcom/xlab/lodgehog/FridaCaller;->callFrida(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_4

    .line 47
    :catch_23
    move-exception v0

    .line 48
    const-string v1, "lodgehog.FridaCaller"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static startLog()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    .line 15
    return-void
.end method

.method public static stopLog()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    .line 18
    return-void
.end method
