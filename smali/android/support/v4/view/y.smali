.class public final Landroid/support/v4/view/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 2

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 418
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 419
    :catch_0
    move-exception p1

    .line 420
    const-string p2, "ViewParentCompat"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ViewParent "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    goto :goto_0

    .line 423
    :cond_0
    instance-of v0, p0, Landroid/support/v4/view/i;

    if-eqz v0, :cond_1

    .line 424
    check-cast p0, Landroid/support/v4/view/i;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/i;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0

    .line 427
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 2

    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 381
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 382
    :catch_0
    move-exception p1

    .line 383
    const-string p2, "ViewParentCompat"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ViewParent "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedFling"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    goto :goto_0

    .line 386
    :cond_0
    instance-of v0, p0, Landroid/support/v4/view/i;

    if-eqz v0, :cond_1

    .line 387
    check-cast p0, Landroid/support/v4/view/i;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/i;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0

    .line 390
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 176
    instance-of v0, p0, Landroid/support/v4/view/j;

    if-eqz v0, :cond_0

    .line 178
    check-cast p0, Landroid/support/v4/view/j;

    invoke-interface {p0, p3, p4}, Landroid/support/v4/view/j;->a(II)Z

    move-result p0

    return p0

    .line 180
    :cond_0
    if-nez p4, :cond_2

    .line 182
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_1

    .line 184
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 185
    :catch_0
    move-exception p1

    .line 186
    const-string p2, "ViewParentCompat"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ViewParent "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStartNestedScroll"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    instance-of p4, p0, Landroid/support/v4/view/i;

    if-eqz p4, :cond_2

    .line 190
    check-cast p0, Landroid/support/v4/view/i;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/i;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 194
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
