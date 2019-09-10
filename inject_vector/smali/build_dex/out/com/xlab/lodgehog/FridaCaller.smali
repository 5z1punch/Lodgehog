.class public Lcom/xlab/lodgehog/FridaCaller;
.super Ljava/lang/Object;
.source "FridaCaller.java"


# static fields
.field public static logFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

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
    .registers 7

    .prologue
    .line 51
    sget-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    if-eqz v0, :cond_20

    .line 53
    const-string v0, "lodgehog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_20
    return-void
.end method

.method public static getLogFlag()Z
    .registers 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    return v0
.end method

.method public static obj2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 19
    const-string v0, ""

    .line 20
    if-nez p0, :cond_7

    .line 21
    const-string v0, "null@192e8asj"

    .line 31
    :goto_6
    return-object v0

    .line 25
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_6

    .line 27
    :catch_c
    move-exception v0

    .line 28
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
    .line 34
    sget-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    if-nez v0, :cond_5

    .line 49
    :goto_4
    return-void

    .line 38
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 39
    invoke-static {p1}, Lcom/xlab/lodgehog/FridaCaller;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    array-length v0, p2

    new-array v3, v0, [Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    :goto_11
    array-length v4, p2

    if-ge v0, v4, :cond_1f

    .line 42
    aget-object v4, p2, v0

    invoke-static {v4}, Lcom/xlab/lodgehog/FridaCaller;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 44
    :cond_1f
    invoke-static {v1, p0, v2, v3}, Lcom/xlab/lodgehog/FridaCaller;->callFrida(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_4

    .line 46
    :catch_23
    move-exception v0

    .line 47
    const-string v1, "lodgehog.FridaCaller"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static startLog()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    .line 14
    return-void
.end method

.method public static stopLog()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlab/lodgehog/FridaCaller;->logFlag:Z

    .line 17
    return-void
.end method
