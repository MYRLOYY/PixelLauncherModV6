.class public Lcom/google/research/reflection/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Ljava/util/List;
    .locals 4

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget v1, p0, Lcom/google/research/reflection/a/a;->afn:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 32
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 33
    invoke-interface {v2}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method
