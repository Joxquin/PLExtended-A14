.class public final Lcom/android/wm/shell/common/bubbles/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/wm/shell/common/bubbles/b;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/bubbles/b;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/android/wm/shell/common/bubbles/b;

    return-object p0
.end method
