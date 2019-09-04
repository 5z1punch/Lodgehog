.class public Lcom/xlab/Lodgehog/MaskMap;
.super Ljava/lang/Object;
.source "MaskMap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 7

    .prologue
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 7
    const-string v1, "Map.containsKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 8
    return v0
.end method

.method public static get(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    const-string v1, "Map.get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    return-object v0
.end method

.method public static getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 16
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    const-string v1, "Map.getOrDefault"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/xlab/Lodgehog/FlowLogNG;->log(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method
