.class public final Lcom/google/android/material/timepicker/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final d:Lcom/google/android/material/timepicker/j;

.field public final e:Lcom/google/android/material/timepicker/j;

.field public final f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/timepicker/m;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/m;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v1, v0, v1}, Lcom/google/android/material/timepicker/n;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/material/timepicker/n;->g:I

    .line 4
    iput p2, p0, Lcom/google/android/material/timepicker/n;->h:I

    .line 5
    iput p3, p0, Lcom/google/android/material/timepicker/n;->i:I

    .line 6
    iput p4, p0, Lcom/google/android/material/timepicker/n;->f:I

    const/4 p2, 0x1

    const/16 p3, 0xc

    if-lt p1, p3, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput p1, p0, Lcom/google/android/material/timepicker/n;->j:I

    .line 8
    new-instance p1, Lcom/google/android/material/timepicker/j;

    const/16 v0, 0x3b

    invoke-direct {p1, v0}, Lcom/google/android/material/timepicker/j;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/n;->d:Lcom/google/android/material/timepicker/j;

    .line 9
    new-instance p1, Lcom/google/android/material/timepicker/j;

    if-ne p4, p2, :cond_1

    const/16 p3, 0x18

    :cond_1
    invoke-direct {p1, p3}, Lcom/google/android/material/timepicker/j;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/n;->e:Lcom/google/android/material/timepicker/j;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 4

    iget v0, p0, Lcom/google/android/material/timepicker/n;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/material/timepicker/n;->g:I

    rem-int/lit8 p0, p0, 0x18

    return p0

    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/n;->g:I

    rem-int/lit8 v2, v0, 0xc

    const/16 v3, 0xc

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget p0, p0, Lcom/google/android/material/timepicker/n;->j:I

    if-ne p0, v1, :cond_2

    sub-int/2addr v0, v3

    :cond_2
    return v0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/material/timepicker/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/material/timepicker/n;

    iget v1, p0, Lcom/google/android/material/timepicker/n;->g:I

    iget v3, p1, Lcom/google/android/material/timepicker/n;->g:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/n;->h:I

    iget v3, p1, Lcom/google/android/material/timepicker/n;->h:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/timepicker/n;->f:I

    iget v3, p1, Lcom/google/android/material/timepicker/n;->f:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/material/timepicker/n;->i:I

    iget p1, p1, Lcom/google/android/material/timepicker/n;->i:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/timepicker/n;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/material/timepicker/n;->g:I

    return-void

    :cond_0
    const/16 v0, 0xc

    rem-int/2addr p1, v0

    iget v2, p0, Lcom/google/android/material/timepicker/n;->j:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/n;->g:I

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/material/timepicker/n;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/timepicker/n;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/timepicker/n;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/google/android/material/timepicker/n;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/material/timepicker/n;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/timepicker/n;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/timepicker/n;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/google/android/material/timepicker/n;->f:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
