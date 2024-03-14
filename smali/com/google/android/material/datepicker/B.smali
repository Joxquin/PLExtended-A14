.class public final Lcom/google/android/material/datepicker/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic e:Lcom/google/android/material/datepicker/D;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/D;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/B;->e:Lcom/google/android/material/datepicker/D;

    iput-object p2, p0, Lcom/google/android/material/datepicker/B;->d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/datepicker/B;->d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/A;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/A;->b()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/A;->b()I

    move-result p2

    iget-object p1, p1, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/z;

    iget p1, p1, Lcom/google/android/material/datepicker/z;->h:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    if-gt p3, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/datepicker/B;->e:Lcom/google/android/material/datepicker/D;

    iget-object p1, p1, Lcom/google/android/material/datepicker/D;->c:Lcom/google/android/material/datepicker/n;

    iget-object p0, p0, Lcom/google/android/material/datepicker/B;->d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/A;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/A;->c(I)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object p0, p1, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->g:Lcom/google/android/material/datepicker/d;

    iget-object p1, p1, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    invoke-interface {p1, p2, p3}, Lcom/google/android/material/datepicker/c;->g(J)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->f:Lcom/google/android/material/datepicker/g;

    invoke-interface {p1}, Lcom/google/android/material/datepicker/g;->a()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/PickerFragment;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/datepicker/E;

    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->f:Lcom/google/android/material/datepicker/g;

    invoke-interface {p3}, Lcom/google/android/material/datepicker/g;->k()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/E;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/Z;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->k:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
