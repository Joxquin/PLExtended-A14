.class public final Lcom/google/android/material/datepicker/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/datepicker/D;

.field public final synthetic f:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/D;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/datepicker/r;->d:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/r;->f:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/datepicker/r;->e:Lcom/google/android/material/datepicker/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/google/android/material/datepicker/r;->d:I

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->f:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/l0;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->f:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v1, v1, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->f:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->e:Lcom/google/android/material/datepicker/D;

    iget-object p0, p0, Lcom/google/android/material/datepicker/D;->a:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/google/android/material/datepicker/z;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/z;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->d(Lcom/google/android/material/datepicker/z;)V

    :cond_0
    return-void

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/r;->f:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/l0;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->f:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->e:Lcom/google/android/material/datepicker/D;

    iget-object p0, p0, Lcom/google/android/material/datepicker/D;->a:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/H;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/google/android/material/datepicker/z;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/z;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->d(Lcom/google/android/material/datepicker/z;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
