.class public final Lcom/google/android/material/datepicker/D;
.super Landroidx/recyclerview/widget/Z;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/d;

.field public final b:Lcom/google/android/material/datepicker/g;

.field public final c:Lcom/google/android/material/datepicker/n;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/datepicker/g;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/n;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/Z;-><init>()V

    iget-object v0, p3, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object v1, p3, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    iget-object v2, p3, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    iget-object v0, v0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    iget-object v3, v2, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, v2, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    iget-object v1, v1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lcom/google/android/material/datepicker/A;->i:I

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/datepicker/D;->d:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/D;->a:Lcom/google/android/material/datepicker/d;

    iput-object p2, p0, Lcom/google/android/material/datepicker/D;->b:Lcom/google/android/material/datepicker/g;

    iput-object p4, p0, Lcom/google/android/material/datepicker/D;->c:Lcom/google/android/material/datepicker/n;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/Z;->setHasStableIds(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "currentPage cannot be after lastPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstPage cannot be after currentPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/D;->a:Lcom/google/android/material/datepicker/d;

    iget p0, p0, Lcom/google/android/material/datepicker/d;->j:I

    return p0
.end method

.method public final getItemId(I)J
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/D;->a:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/google/android/material/datepicker/z;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/z;-><init>(Ljava/util/Calendar;)V

    iget-object p0, p1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/E0;I)V
    .locals 3

    check-cast p1, Lcom/google/android/material/datepicker/C;

    iget-object v0, p0, Lcom/google/android/material/datepicker/D;->a:Lcom/google/android/material/datepicker/d;

    iget-object v1, v0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object v1, v1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/z;

    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/z;-><init>(Ljava/util/Calendar;)V

    iget-object v1, p1, Lcom/google/android/material/datepicker/C;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/z;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/C;->e:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v1, 0x7f0a0232

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/A;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/A;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/A;

    move-result-object p2

    iget-object v0, p2, Lcom/google/android/material/datepicker/A;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/google/android/material/datepicker/A;->e(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/google/android/material/datepicker/A;->e:Lcom/google/android/material/datepicker/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/material/datepicker/g;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/google/android/material/datepicker/A;->e(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/google/android/material/datepicker/A;->e:Lcom/google/android/material/datepicker/g;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/g;->i()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/material/datepicker/A;->f:Ljava/util/Collection;

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/android/material/datepicker/A;

    iget-object v2, p0, Lcom/google/android/material/datepicker/D;->b:Lcom/google/android/material/datepicker/g;

    invoke-direct {v1, p2, v2, v0}, Lcom/google/android/material/datepicker/A;-><init>(Lcom/google/android/material/datepicker/z;Lcom/google/android/material/datepicker/g;Lcom/google/android/material/datepicker/d;)V

    iget p2, p2, Lcom/google/android/material/datepicker/z;->g:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    :goto_2
    new-instance p2, Lcom/google/android/material/datepicker/B;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/B;-><init>(Lcom/google/android/material/datepicker/D;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ac

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/m0;

    const/4 v0, -0x1

    iget p0, p0, Lcom/google/android/material/datepicker/D;->d:I

    invoke-direct {p1, v0, p0}, Landroidx/recyclerview/widget/m0;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/google/android/material/datepicker/C;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/datepicker/C;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/material/datepicker/C;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/datepicker/C;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p0
.end method
