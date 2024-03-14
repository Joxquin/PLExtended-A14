.class public final Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final d:Lcom/google/android/material/datepicker/z;

.field public final e:Lcom/google/android/material/datepicker/z;

.field public final f:Lcom/google/android/material/datepicker/c;

.field public final g:Lcom/google/android/material/datepicker/z;

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/a;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/a;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/z;Lcom/google/android/material/datepicker/z;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/z;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iput-object p2, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    iput-object p4, p0, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    iput p5, p0, Lcom/google/android/material/datepicker/d;->h:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    if-eqz p4, :cond_1

    iget-object p3, p1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    iget-object v0, p4, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p3

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start Month cannot be after current Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    iget-object p3, p4, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    iget-object p4, p2, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p3

    if-gtz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "current Month cannot be after end Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ltz p5, :cond_5

    const/4 p3, 0x0

    invoke-static {p3}, Lcom/google/android/material/datepicker/H;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 p4, 0x7

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p3

    if-gt p5, p3, :cond_5

    iget-object p3, p1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    instance-of p3, p3, Ljava/util/GregorianCalendar;

    if-eqz p3, :cond_4

    iget p3, p2, Lcom/google/android/material/datepicker/z;->f:I

    iget p4, p1, Lcom/google/android/material/datepicker/z;->f:I

    sub-int p5, p3, p4

    mul-int/lit8 p5, p5, 0xc

    iget p2, p2, Lcom/google/android/material/datepicker/z;->e:I

    iget p1, p1, Lcom/google/android/material/datepicker/z;->e:I

    sub-int/2addr p2, p1

    add-int/2addr p2, p5

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/material/datepicker/d;->j:I

    sub-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/android/material/datepicker/d;->i:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Gregorian calendars are supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstDayOfWeek is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/google/android/material/datepicker/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/d;

    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object v3, p1, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    iget-object v3, p1, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    iget-object v3, p1, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/datepicker/d;->h:I

    iget v3, p1, Lcom/google/android/material/datepicker/d;->h:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    iget-object p1, p1, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    iget-object v2, p0, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    iget v3, p0, Lcom/google/android/material/datepicker/d;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/google/android/material/datepicker/d;->h:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
