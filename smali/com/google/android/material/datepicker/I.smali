.class public final Lcom/google/android/material/datepicker/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/datepicker/K;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/K;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/I;->e:Lcom/google/android/material/datepicker/K;

    iput p2, p0, Lcom/google/android/material/datepicker/I;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/google/android/material/datepicker/I;->d:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/I;->e:Lcom/google/android/material/datepicker/K;

    iget-object v0, v0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Lcom/google/android/material/datepicker/z;

    iget v0, v0, Lcom/google/android/material/datepicker/z;->e:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/z;->o(II)Lcom/google/android/material/datepicker/z;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/I;->e:Lcom/google/android/material/datepicker/K;

    iget-object v0, v0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->g:Lcom/google/android/material/datepicker/d;

    iget-object v1, v0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-object v2, p1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    iget-object v1, v1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object p1, v0, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    iget-object v2, p1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    iget-object v1, v1, Lcom/google/android/material/datepicker/z;->d:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/I;->e:Lcom/google/android/material/datepicker/K;

    iget-object v0, v0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->d(Lcom/google/android/material/datepicker/z;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/I;->e:Lcom/google/android/material/datepicker/K;

    iget-object p0, p0, Lcom/google/android/material/datepicker/K;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget-object p1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->d:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->e(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    return-void
.end method
