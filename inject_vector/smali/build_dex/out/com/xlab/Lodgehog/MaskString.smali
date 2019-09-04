.class public final Lcom/xlab/Lodgehog/MaskString;
.super Ljava/lang/Object;
.source "MaskString.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charAt(Ljava/lang/String;I)C
    .registers 8

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 15
    const-string v1, "String.charAt"

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 16
    return v0
.end method

.method public static codePointAt(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 20
    const-string v1, "String.codePointAt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 21
    return v0
.end method

.method public static codePointBefore(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 25
    const-string v1, "String.codePointBefore"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 26
    return v0
.end method

.method public static codePointCount(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 30
    const-string v1, "String.codePointCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 31
    return v0
.end method

.method public static compareTo(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 7

    .prologue
    .line 337
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 338
    const-string v1, "String.compareTo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 339
    return v0
.end method

.method public static compareTo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 83
    const-string v1, "String.compareTo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 84
    return v0
.end method

.method public static compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 88
    const-string v1, "String.compareToIgnoreCase"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 89
    return v0
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "String.concat"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 179
    return-object v0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 7

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 193
    const-string v1, "String.contains"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 194
    return v0
.end method

.method public static contentEquals(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 7

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 73
    const-string v1, "String.contentEquals"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 74
    return v0
.end method

.method public static contentEquals(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .registers 7

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/StringBuffer;)Z

    move-result v0

    .line 68
    const-string v1, "String.contentEquals"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    return v0
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .registers 5

    .prologue
    .line 297
    invoke-static {p0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "String.copyValueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 299
    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .registers 8

    .prologue
    .line 292
    invoke-static {p0, p1, p2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "String.copyValueOf"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 294
    return-object v0
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 113
    const-string v1, "String.endsWith"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 114
    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    const-string v1, "String.equals"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 64
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 78
    const-string v1, "String.equalsIgnoreCase"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 79
    return v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 267
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "String.format"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 269
    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 272
    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v1, "String.format"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 274
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;II[BI)V
    .registers 10

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 44
    const-string v0, "String.getBytes"

    const-string v1, "__VOID__"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 58
    const-string v1, "String.getBytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 59
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    const-string v1, "String.getBytes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 49
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 6

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 53
    const-string v1, "String.getBytes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 54
    return-object v0
.end method

.method public static getChars(Ljava/lang/String;II[CI)V
    .registers 10

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 40
    const-string v0, "String.getChars"

    const-string v1, "__VOID__"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static hashCode(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 118
    const-string v1, "String.hashCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 119
    return v0
.end method

.method public static indexOf(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 123
    const-string v1, "String.indexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 124
    return v0
.end method

.method public static indexOf(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 128
    const-string v1, "String.indexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 129
    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 143
    const-string v1, "String.indexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 144
    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 148
    const-string v1, "String.indexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 149
    return v0
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v1, "String.intern"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 334
    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 10
    const-string v1, "String.isEmpty"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 11
    return v0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "String.join"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 229
    return-object v0
.end method

.method public static varargs join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 222
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "String.join"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 224
    return-object v0
.end method

.method public static lastIndexOf(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 133
    const-string v1, "String.lastIndexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 134
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 138
    const-string v1, "String.lastIndexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 139
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    const-string v1, "String.lastIndexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 154
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 158
    const-string v1, "String.lastIndexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 159
    return v0
.end method

.method public static length(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    const-string v1, "String.length"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 6
    return v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 188
    const-string v1, "String.matches"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 189
    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    .line 35
    const-string v1, "String.offsetByCodePoints"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 36
    return v0
.end method

.method public static regionMatches(Ljava/lang/String;ILjava/lang/String;II)Z
    .registers 11

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    .line 93
    const-string v1, "String.regionMatches"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 94
    return v0
.end method

.method public static regionMatches(Ljava/lang/String;ZILjava/lang/String;II)Z
    .registers 12

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 98
    const-string v1, "String.regionMatches"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 99
    return v0
.end method

.method public static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 8

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "String.replace"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 184
    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "String.replace"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 209
    return-object v0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "String.replaceAll"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 204
    return-object v0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 197
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "String.replaceFirst"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 199
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, "String.split"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 219
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .prologue
    .line 212
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "String.split"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 214
    return-object v0
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 108
    const-string v1, "String.startsWith"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 109
    return v0
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    .line 103
    const-string v1, "String.startsWith"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    return v0
.end method

.method public static subSequence(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .registers 8

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    const-string v1, "String.subSequence"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 174
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "String.substring"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 164
    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "String.substring"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 169
    return-object v0
.end method

.method public static toCharArray(Ljava/lang/String;)[C
    .registers 5

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 263
    const-string v1, "String.toCharArray"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 264
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "String.toLowerCase"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 239
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v1, "String.toLowerCase"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 234
    return-object v0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "String.toString"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 259
    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "String.toUpperCase"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 249
    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "String.toUpperCase"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 244
    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "String.trim"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 254
    return-object v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .registers 6

    .prologue
    .line 307
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 309
    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 327
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 329
    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .registers 6

    .prologue
    .line 322
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 324
    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 312
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 314
    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 317
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 319
    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 277
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 279
    return-object v0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 302
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 304
    return-object v0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 5

    .prologue
    .line 282
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 284
    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .registers 8

    .prologue
    .line 287
    invoke-static {p0, p1, p2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "String.valueOf"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 289
    return-object v0
.end method
