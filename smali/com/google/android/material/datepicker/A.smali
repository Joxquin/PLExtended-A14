.class public final Lcom/google/android/material/datepicker/A;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final i:I

.field public static final j:I


# instance fields
.field public final d:Lcom/google/android/material/datepicker/z;

.field public final e:Lcom/google/android/material/datepicker/g;

.field public f:Ljava/util/Collection;

.field public g:Lcom/google/android/material/datepicker/f;

.field public final h:Lcom/google/android/material/datepicker/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/H;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    sput v1, Lcom/google/android/material/datepicker/A;->i:I

    invoke-static {v0}, Lcom/google/android/material/datepicker/H;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/material/datepicker/H;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/material/datepicker/A;->j:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/z;Lcom/google/android/material/datepicker/g;Lcom/google/android/material/datepicker/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iput-object p2, p0, Lcom/google/android/material/datepicker/A;->e:Lcom/google/android/material/datepicker/g;

    iput-object p3, p0, Lcom/google/android/material/datepicker/A;->h:Lcom/google/android/material/datepicker/d;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/g;->i()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/A;->f:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->h:Lcom/google/android/material/datepicker/d;

    iget p0, p0, Lcom/google/android/material/datepicker/d;->h:I

    iget-object v1, v0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    :goto_0
    sub-int/2addr v1, p0

    if-gez v1, :cond_1

    iget p0, v0, Lcom/google/android/material/datepicker/z;->g:I

    add-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public final c(I)Ljava/lang/Long;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/A;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/A;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget v2, v1, Lcom/google/android/material/datepicker/z;->h:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/A;->b()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, v1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Landroid/widget/TextView;J)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/A;->h:Lcom/google/android/material/datepicker/d;

    iget-object v0, v0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/c;->g(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/A;->e:Lcom/google/android/material/datepicker/g;

    invoke-interface {v2}, Lcom/google/android/material/datepicker/g;->i()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/H;->a(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/H;->a(J)J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->g:Lcom/google/android/material/datepicker/f;

    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->b:Lcom/google/android/material/datepicker/e;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/material/datepicker/H;->c()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->g:Lcom/google/android/material/datepicker/f;

    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->c:Lcom/google/android/material/datepicker/e;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->g:Lcom/google/android/material/datepicker/f;

    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->a:Lcom/google/android/material/datepicker/e;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->g:Lcom/google/android/material/datepicker/f;

    iget-object p0, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/e;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/e;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public final e(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/z;->p(J)Lcom/google/android/material/datepicker/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget-object v0, v0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/A;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/A;->b()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/A;->d(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 0

    sget p0, Lcom/google/android/material/datepicker/A;->j:I

    return p0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/A;->c(I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget p0, p0, Lcom/google/android/material/datepicker/z;->g:I

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/A;->g:Lcom/google/android/material/datepicker/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/material/datepicker/f;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/A;->g:Lcom/google/android/material/datepicker/f;

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a7

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/A;->b()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_4

    iget-object p3, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget v2, p3, Lcom/google/android/material/datepicker/z;->h:I

    if-lt p2, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {p3, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget-object p3, p3, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {p3}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 v3, 0x5

    invoke-virtual {p3, v3, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iget-object v3, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget v3, v3, Lcom/google/android/material/datepicker/z;->f:I

    new-instance v4, Lcom/google/android/material/datepicker/z;

    invoke-static {}, Lcom/google/android/material/datepicker/H;->c()Ljava/util/Calendar;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/material/datepicker/z;-><init>(Ljava/util/Calendar;)V

    iget v4, v4, Lcom/google/android/material/datepicker/z;->f:I

    const-string v5, "UTC"

    if-ne v3, v4, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MMMEd"

    invoke-static {v4, v3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    invoke-static {v5}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "yMMMEd"

    invoke-static {v4, v3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    invoke-static {v5}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/A;->c(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/datepicker/A;->d(Landroid/widget/TextView;J)V

    :goto_3
    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
