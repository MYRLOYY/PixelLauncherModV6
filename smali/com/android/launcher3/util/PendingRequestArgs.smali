.class public Lcom/android/launcher3/util/PendingRequestArgs;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final mArg1:I

.field private final mObject:Landroid/os/Parcelable;

.field public final mObjectType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/PendingRequestArgs$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/PendingRequestArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILandroid/os/Parcelable;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    .line 50
    iput p2, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    .line 51
    iput-object p3, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 55
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/PendingRequestArgs;->readFromValues(Landroid/content/ContentValues;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 61
    return-void
.end method

.method public static forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 2

    .line 105
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    .line 106
    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 107
    return-object v0
.end method

.method public static forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 2

    .line 98
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final getPendingIntent()Landroid/content/Intent;
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequestCode()I
    .locals 2

    .line 93
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 2

    .line 81
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    new-instance v1, Lcom/android/launcher3/util/ContentWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/PendingRequestArgs;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
