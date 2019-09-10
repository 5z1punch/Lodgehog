.class public Lcom/xlab/lodgehog/FlowLogNG;
.super Ljava/lang/Object;
.source "FlowLogNG.java"


# static fields
.field public static LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public static logDir:Ljava/lang/String;

.field public static logFlag:Z

.field public static pid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "flowLogNG/"

    sput-object v0, Lcom/xlab/lodgehog/FlowLogNG;->logDir:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlab/lodgehog/FlowLogNG;->logFlag:Z

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/xlab/lodgehog/FlowLogNG;->pid:I

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xlab/lodgehog/FlowLogNG;->LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAllStream()V
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lcom/xlab/lodgehog/FlowLogNG;->LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    .line 103
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 104
    :catch_1a
    move-exception v0

    .line 106
    const-string v0, "FlowLog"

    const-string v2, "IOException when closs a FOS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 109
    :cond_23
    return-void
.end method

.method public static flushAllStream()V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/xlab/lodgehog/FlowLogNG;->LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    .line 113
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 114
    :catch_1a
    move-exception v0

    .line 116
    const-string v0, "FlowLog"

    const-string v2, "IOException when flush a FOS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 119
    :cond_23
    return-void
.end method

.method public static getLogDir()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/xlab/lodgehog/FlowLogNG;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogFlag()Z
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/xlab/lodgehog/FlowLogNG;->logFlag:Z

    return v0
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 49
    sget-boolean v0, Lcom/xlab/lodgehog/FlowLogNG;->logFlag:Z

    if-nez v0, :cond_6

    .line 99
    :goto_5
    return-void

    .line 53
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v0, ""

    .line 56
    invoke-static {p1}, Lcom/xlab/lodgehog/FlowLogNG;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 57
    array-length v5, p2

    :goto_24
    if-ge v1, v5, :cond_46

    aget-object v6, p2, v1

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/xlab/lodgehog/FlowLogNG;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 60
    :cond_46
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    sget-object v0, Lcom/xlab/lodgehog/FlowLogNG;->LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 66
    sget-object v0, Lcom/xlab/lodgehog/FlowLogNG;->LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_93} :catch_a8

    move-result-object v2

    .line 70
    :try_start_94
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_99
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_a8

    goto/16 :goto_5

    .line 71
    :catch_99
    move-exception v0

    .line 72
    :try_start_9a
    const-string v0, "FlowLog"

    const-string v2, "IOException when write a FOS "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "FlowLog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a6} :catch_a8

    goto/16 :goto_5

    .line 96
    :catch_a8
    move-exception v0

    .line 97
    const-string v1, "FlowLog.log"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 77
    :cond_b4
    :try_start_b4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 78
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/xlab/lodgehog/FlowLogNG;->logDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/xlab/lodgehog/FlowLogNG;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_e2} :catch_a8

    .line 80
    :try_start_e2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 81
    sget-object v4, Lcom/xlab/lodgehog/FlowLogNG;->LogFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_fb
    .catch Ljava/io/FileNotFoundException; {:try_start_e2 .. :try_end_fb} :catch_fd
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_fb} :catch_121
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_fb} :catch_a8

    goto/16 :goto_5

    .line 85
    :catch_fd
    move-exception v0

    .line 87
    :try_start_fe
    const-string v0, "FlowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException when open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "FlowLog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 89
    :catch_121
    move-exception v0

    .line 91
    const-string v0, "FlowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException when write "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "FlowLog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_143} :catch_a8

    goto/16 :goto_5
.end method

.method public static obj2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 34
    const-string v0, ""

    .line 35
    if-nez p0, :cond_7

    .line 36
    const-string v0, "null@192e8asj"

    .line 46
    :goto_6
    return-object v0

    .line 40
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_6

    .line 42
    :catch_c
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "`toStrError@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static setLogDir(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 22
    sput-object p0, Lcom/xlab/lodgehog/FlowLogNG;->logDir:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static startLog()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xlab/lodgehog/FlowLogNG;->logFlag:Z

    .line 29
    return-void
.end method

.method public static stopLog()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlab/lodgehog/FlowLogNG;->logFlag:Z

    .line 32
    return-void
.end method
