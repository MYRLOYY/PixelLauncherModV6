.class Lcom/android/quickstep/AnimatedFloat$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/AnimatedFloat;)Ljava/lang/Float;
    .locals 0

    .line 36
    iget p1, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat$1;->get(Lcom/android/quickstep/AnimatedFloat;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/AnimatedFloat;F)V
    .locals 0

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 32
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 28
    check-cast p1, Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/AnimatedFloat$1;->setValue(Lcom/android/quickstep/AnimatedFloat;F)V

    return-void
.end method
