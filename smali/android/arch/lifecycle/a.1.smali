.class Landroid/arch/lifecycle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static z:Landroid/arch/lifecycle/a;


# instance fields
.field private final A:Ljava/util/Map;

.field final B:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/arch/lifecycle/a;

    invoke-direct {v0}, Landroid/arch/lifecycle/a;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/a;->z:Landroid/arch/lifecycle/a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/a;->A:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/a;->B:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/Map;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 3

    .line 90
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 91
    if-eqz v0, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p2, Landroid/arch/lifecycle/c;->F:Ljava/lang/reflect/Method;

    .line 93
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", new value "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 98
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 99
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/b;
    .locals 11

    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/a;->b(Ljava/lang/Class;)Landroid/arch/lifecycle/b;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v0, v0, Landroid/arch/lifecycle/b;->D:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 114
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 115
    invoke-virtual {p0, v5}, Landroid/arch/lifecycle/a;->b(Ljava/lang/Class;)Landroid/arch/lifecycle/b;

    move-result-object v5

    iget-object v5, v5, Landroid/arch/lifecycle/b;->D:Ljava/util/Map;

    .line 116
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 115
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/arch/lifecycle/c;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v1, v7, v6, p1}, Landroid/arch/lifecycle/a;->a(Ljava/util/Map;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 118
    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/a;->a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    .line 122
    :goto_2
    nop

    .line 123
    array-length v0, p2

    move v2, v3

    move v4, v2

    :goto_3
    if-ge v2, v0, :cond_b

    aget-object v5, p2, v2

    .line 124
    const-class v6, Landroid/arch/lifecycle/w;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/arch/lifecycle/w;

    .line 125
    const/4 v7, 0x1

    if-eqz v6, :cond_a

    .line 126
    nop

    .line 129
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 130
    nop

    .line 131
    array-length v8, v4

    if-lez v8, :cond_5

    .line 132
    nop

    .line 133
    aget-object v8, v4, v3

    const-class v9, Landroid/arch/lifecycle/k;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    move v8, v7

    goto :goto_4

    .line 134
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_5
    move v8, v3

    :goto_4
    invoke-interface {v6}, Landroid/arch/lifecycle/w;->l()Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v6

    .line 140
    array-length v9, v4

    const/4 v10, 0x2

    if-le v9, v7, :cond_8

    .line 141
    nop

    .line 142
    aget-object v8, v4, v7

    const-class v9, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 146
    sget-object v8, Landroid/arch/lifecycle/Lifecycle$Event;->P:Landroid/arch/lifecycle/Lifecycle$Event;

    if-ne v6, v8, :cond_6

    .line 151
    move v8, v10

    goto :goto_5

    .line 147
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Second arg is supported only for ON_ANY value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameter type. second arg must be an event"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_8
    :goto_5
    array-length v4, v4

    if-gt v4, v10, :cond_9

    .line 154
    new-instance v4, Landroid/arch/lifecycle/c;

    invoke-direct {v4, v8, v5}, Landroid/arch/lifecycle/c;-><init>(ILjava/lang/reflect/Method;)V

    .line 155
    invoke-direct {p0, v1, v4, v6, p1}, Landroid/arch/lifecycle/a;->a(Ljava/util/Map;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 123
    move v4, v7

    goto :goto_6

    .line 152
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot have more than 2 params"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 157
    :cond_b
    new-instance p2, Landroid/arch/lifecycle/b;

    invoke-direct {p2, v1}, Landroid/arch/lifecycle/b;-><init>(Ljava/util/Map;)V

    .line 158
    iget-object v0, p0, Landroid/arch/lifecycle/a;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Landroid/arch/lifecycle/a;->B:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object p2
.end method

.method final a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final b(Ljava/lang/Class;)Landroid/arch/lifecycle/b;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/arch/lifecycle/a;->A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/b;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/arch/lifecycle/a;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/b;

    move-result-object p1

    .line 85
    return-object p1
.end method
