.class final Lcom/android/launcher3/util/ActivityResultInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/android/launcher3/util/ActivityResultInfo;

    return-object p0
.end method
