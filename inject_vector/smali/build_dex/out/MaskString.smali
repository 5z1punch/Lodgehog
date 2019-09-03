.class public final LMaskString;
.super Ljava/lang/Object;
.source "MaskString.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charAt(Ljava/lang/String;I)C
    .registers 8

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 14
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 15
    return v0
.end method

.method public static codePointAt(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 19
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 20
    return v0
.end method

.method public static codePointBefore(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 24
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 25
    return v0
.end method

.method public static codePointCount(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 29
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 30
    return v0
.end method

.method public static compareTo(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 7

    .prologue
    .line 336
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 337
    const-string v1, "String.compareTo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 338
    return v0
.end method

.method public static compareTo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 82
    const-string v1, "String.compareTo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 83
    return v0
.end method

.method public static compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 87
    const-string v1, "String.compareToIgnoreCase"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 88
    return v0
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "String.concat"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 178
    return-object v0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 7

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 192
    const-string v1, "String.contains"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 193
    return v0
.end method

.method public static contentEquals(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 7

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 72
    const-string v1, "String.contentEquals"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 73
    return v0
.end method

.method public static contentEquals(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .registers 7

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/StringBuffer;)Z

    move-result v0

    .line 67
    const-string v1, "String.contentEquals"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 68
    return v0
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .registers 5

    .prologue
    .line 296
    invoke-static {p0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "String.copyValueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 298
    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .registers 8

    .prologue
    .line 291
    invoke-static {p0, p1, p2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 292
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

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 293
    return-object v0
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 112
    const-string v1, "String.endsWith"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 113
    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    const-string v1, "String.equals"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 63
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 77
    const-string v1, "String.equalsIgnoreCase"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 78
    return v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 266
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "String.format"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 268
    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 271
    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "String.format"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 273
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;II[BI)V
    .registers 10

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 43
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

    invoke-static {v0, v1, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 57
    const-string v1, "String.getBytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 58
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
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    const-string v1, "String.getBytes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 48
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 6

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 52
    const-string v1, "String.getBytes"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 53
    return-object v0
.end method

.method public static getChars(Ljava/lang/String;II[CI)V
    .registers 10

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 39
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

    invoke-static {v0, v1, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public static hashCode(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 117
    const-string v1, "String.hashCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 118
    return v0
.end method

.method public static indexOf(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 122
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    return v0
.end method

.method public static indexOf(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 127
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 128
    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 142
    const-string v1, "String.indexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 143
    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 147
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 148
    return v0
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v1, "String.intern"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 333
    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 9
    const-string v1, "String.isEmpty"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 10
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
    .line 226
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "String.join"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 228
    return-object v0
.end method

.method public static varargs join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 221
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "String.join"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 223
    return-object v0
.end method

.method public static lastIndexOf(Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 132
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 133
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 137
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 138
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    const-string v1, "String.lastIndexOf"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 153
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 157
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 158
    return v0
.end method

.method public static length(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    const-string v1, "String.length"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 5
    return v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 187
    const-string v1, "String.matches"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 188
    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/String;II)I
    .registers 9

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    .line 34
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 35
    return v0
.end method

.method public static regionMatches(Ljava/lang/String;ILjava/lang/String;II)Z
    .registers 11

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    .line 92
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 93
    return v0
.end method

.method public static regionMatches(Ljava/lang/String;ZILjava/lang/String;II)Z
    .registers 12

    .prologue
    .line 96
    invoke-virtual/range {p0 .. p5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 97
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 98
    return v0
.end method

.method public static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 8

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 182
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

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 183
    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "String.replace"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 208
    return-object v0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "String.replaceAll"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 203
    return-object v0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "String.replaceFirst"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 198
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "String.split"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 218
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 212
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

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 213
    return-object v0
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 107
    const-string v1, "String.startsWith"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 108
    return v0
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    .line 102
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

    invoke-static {v1, v2, v3}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 103
    return v0
.end method

.method public static subSequence(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .registers 8

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
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

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 173
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "String.substring"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 163
    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 167
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

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 168
    return-object v0
.end method

.method public static toCharArray(Ljava/lang/String;)[C
    .registers 5

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 262
    const-string v1, "String.toCharArray"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 263
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "String.toLowerCase"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 238
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "String.toLowerCase"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 233
    return-object v0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, "String.toString"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 258
    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, "String.toUpperCase"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 248
    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "String.toUpperCase"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 243
    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, "String.trim"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 253
    return-object v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .registers 6

    .prologue
    .line 306
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 308
    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 326
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 328
    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .registers 6

    .prologue
    .line 321
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 323
    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 311
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 313
    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 318
    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 276
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 278
    return-object v0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .registers 6

    .prologue
    .line 301
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 303
    return-object v0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 5

    .prologue
    .line 281
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "String.valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 283
    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .registers 8

    .prologue
    .line 286
    invoke-static {p0, p1, p2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 287
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

    invoke-static {v1, v0, v2}, LFlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 288
    return-object v0
.end method
