.class public final Lcom/google/android/material/datepicker/C;
.super Landroidx/recyclerview/widget/E0;
.source "SourceFile"


# instance fields
.field public final d:Landroid/widget/TextView;

.field public final e:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/E0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0237

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/C;->d:Landroid/widget/TextView;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/core/view/t;

    const/4 v2, 0x3

    const v3, 0x7f0a034f

    invoke-direct {v1, v3, v2}, Landroidx/core/view/t;-><init>(II)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/core/view/v;->c(Landroid/view/View;Ljava/lang/Object;)V

    const v1, 0x7f0a0232

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcom/google/android/material/datepicker/C;->e:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
