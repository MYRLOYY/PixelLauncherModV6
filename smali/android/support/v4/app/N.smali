.class final Landroid/support/v4/app/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 130
    new-instance v0, Landroid/support/v4/app/FragmentState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    new-array p1, p1, [Landroid/support/v4/app/FragmentState;

    return-object p1
.end method
