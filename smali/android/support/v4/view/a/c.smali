.class public Landroid/support/v4/view/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final lr:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public static a(IIIIZZ)Landroid/support/v4/view/a/c;
    .locals 2

    .line 651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 652
    new-instance v0, Landroid/support/v4/view/a/c;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/c;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 654
    :cond_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p5, v0, :cond_1

    .line 655
    new-instance p5, Landroid/support/v4/view/a/c;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {p5, p0}, Landroid/support/v4/view/a/c;-><init>(Ljava/lang/Object;)V

    return-object p5

    .line 658
    :cond_1
    new-instance p0, Landroid/support/v4/view/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/view/a/c;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
