.class public final Lcom/google/android/material/datepicker/K;
.super Landroidx/recyclerview/widget/Z;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/Z;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->g:Lcom/google/android/material/datepicker/d;

    iget p0, p0, Lcom/google/android/material/datepicker/d;->i:I

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/E0;I)V
    .locals 7

    check-cast p1, Lcom/google/android/material/datepicker/J;

    iget-object v0, p0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->g:Lcom/google/android/material/datepicker/d;

    iget-object v1, v1, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget v1, v1, Lcom/google/android/material/datepicker/z;->f:I

    add-int/2addr v1, p2

    iget-object p1, p1, Lcom/google/android/material/datepicker/J;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f130149

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->j:Lcom/google/android/material/datepicker/f;

    invoke-static {}, Lcom/google/android/material/datepicker/H;->c()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p2, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/e;

    goto :goto_0

    :cond_0
    iget-object v4, p2, Lcom/google/android/material/datepicker/f;->d:Lcom/google/android/material/datepicker/e;

    :goto_0
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->f:Lcom/google/android/material/datepicker/g;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/g;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v1, :cond_1

    iget-object v4, p2, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/e;

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Lcom/google/android/material/datepicker/e;->b(Landroid/widget/TextView;)V

    new-instance p2, Lcom/google/android/material/datepicker/I;

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/datepicker/I;-><init>(Lcom/google/android/material/datepicker/K;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d00b0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance p1, Lcom/google/android/material/datepicker/J;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/J;-><init>(Landroid/widget/TextView;)V

    return-object p1
.end method
