.class public final Ln2/h;
.super LP/c;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/g;

    invoke-direct {v0}, Ln2/g;-><init>()V

    sput-object v0, Ln2/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, LP/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Ln2/h;->f:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Ln2/h;->g:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Ln2/h;->h:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Ln2/h;->i:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Ln2/h;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, LP/c;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    iput p1, p0, Ln2/h;->f:I

    .line 9
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:I

    .line 10
    iput p1, p0, Ln2/h;->g:I

    .line 11
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 12
    iput-boolean p1, p0, Ln2/h;->h:Z

    .line 13
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    iput-boolean p1, p0, Ln2/h;->i:Z

    .line 14
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    .line 15
    iput-boolean p1, p0, Ln2/h;->j:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, LP/c;->d:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Ln2/h;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Ln2/h;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ln2/h;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ln2/h;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Ln2/h;->j:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
