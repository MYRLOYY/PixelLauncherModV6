.class final Landroid/support/a/u;
.super Landroid/support/a/y;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/y;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 147
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1
.end method

.method public final synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 147
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method
