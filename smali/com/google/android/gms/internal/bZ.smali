.class public final Lcom/google/android/gms/internal/bZ;
.super Ljava/lang/Object;


# instance fields
.field private final Lr:Ljava/lang/Object;

.field private final Uz:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/bZ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/bZ;

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->Lr:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/bZ;->Lr:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->Uz:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/bZ;->Uz:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->Lr:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->Uz:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
